require 'pp'
n = gets.to_i
d = gets.split.map(&:to_i)


cnt = 0
min = d.max + 1
d.each do |dd|
  if dd <= min
    min = dd
    cnt += 1
  else
  end
end
p cnt
