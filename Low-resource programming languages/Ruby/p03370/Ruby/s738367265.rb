tmp = gets.chomp.split(" ")
cnt = tmp[0].to_i
rem = tmp[1].to_i


donuts = Array.new
cnt.to_i.times do
  donuts.push(gets.chomp.to_i)
end

sm = donuts[0]
donuts.each do |donut|
  sm = donut if donut < sm
  rem -= donut
end

while rem > sm do
  rem -= sm
  cnt += 1
end

puts cnt
