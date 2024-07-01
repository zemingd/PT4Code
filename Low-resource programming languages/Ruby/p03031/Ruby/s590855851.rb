require 'pp'
n, m = gets.split.map(&:to_i)
s = []
m.times do
  _, *si = gets.split.map(&:to_i)
  si.map! { |x| x - 1 }
  s << si
end
pika = gets.split.map(&:to_i)
ans = 0
(1 << n).times do |i|
  flag = true
  m.times do |j|
    t = s[j].map { |si| i[si] }.inject(:+)
    if pika[j] != t % 2
      flag = false
      break
    end
  end
  ans += 1 if flag
end
p ans
