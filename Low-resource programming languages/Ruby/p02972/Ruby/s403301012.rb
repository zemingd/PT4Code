N=gets.to_i
a=[0]+gets.split.map(&:to_i)

r=[]
s=Array.new(N+1){0}
N.downto(1) do |i|
  next if a[i] == s[i]
  r << i
  1.upto(n) do |i|
    break unless i <= n/i
    next unless (n%i).zero?
    s[i] += 1
    s[i] %= 2
    s[n/i] += 1 if i != n/i
    s[n/i] %= 2
  end
end
if a[1] == s[1]
  p r.size
  puts r*" " unless r.size.zero?
else
  p -1
end
