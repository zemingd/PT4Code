require 'pp'

N,Q = readline.chomp.split.map(&:to_i)
s = readline.chomp
a = Array.new(s.length, 0)
sum = 0
(1..(s.length-1)).each do |i|
  if s[i-1] == 'A' and s[i] == 'C'
    sum += 1
  end
  a[i] = sum
end

Q.times do |i|
  l,r = readline.chomp.split.map(&:to_i).map {|x| x-1}
  ans = a[r] - a[l]
  #ans -= 1 if s[l-1] == 'A' and s[l] == 'C'
  puts ans
end
