def divisors(n)
  1.upto(Math.sqrt(n).to_i + 1).select{|i| (n%i).zero?}.map{|i| [i, n/i].uniq}.flatten
end

N=gets.to_i
a=[0]+gets.split.map(&:to_i)

r=[]
s=Array.new(N+1){0}
N.downto(1) do |i|
  next if a[i] == s[i]
  r << i
  divisors(i).each do |j|
    s[j] += 1
    s[j] %= 2
  end
end
if a[1] == s[1]
  p r.size
  puts r*" " unless r.size.zero?
else
  p -1
end
