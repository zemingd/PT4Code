N = gets.to_i
score = gets.split("\s").map {|s|s.to_i}
rate = Array.new(8,0)
ex = 0
min = 0
max = 0

score.each do |d|
  if rate[0]==0 && d >= 1 && d <= 399 then
    rate[0] = 1
    min += 1
  elsif rate[1]==0 && d >= 400 && d <= 799 then
    rate[1] = 1
    min += 1
  elsif rate[2]==0 && d >= 800 && d <= 1199 then
    rate[2] = 1
    min += 1
  elsif rate[3]==0 && d >= 1200 && d <= 1599 then
    rate[3] = 1
    min += 1
  elsif rate[4]==0 && d >= 1600 && d <= 1999 then
    rate[4] = 1
    min += 1
  elsif rate[5]==0 && d >= 2000 && d <= 2399 then
    rate[5] = 1
    min += 1
  elsif rate[6]==0 && d >= 2400 && d <= 2799 then
    rate[6] = 1
    min += 1
  elsif rate[7]==0 && d >= 2800 && d <= 3199 then
    rate[7] = 1
    min += 1
  elsif d >= 3200 then
    ex += 1
  end
end
max = min+ex
if max > 8 then
  max = 8
end
if min == 0 then
  min = 1
end
puts "#{min} #{max}"
