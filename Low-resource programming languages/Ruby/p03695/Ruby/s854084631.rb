n = gets.to_i
a_array = gets.split(" ").map(&:to_i)

rate = Array.new(8, 0)
wild = 0
a_array.each do |a|
  if a > 0 && a < 400
    rate[0] += 1
  elsif a < 800
    rate[1] += 1
  elsif a < 1200
    rate[2] += 1
  elsif a < 1600
    rate[3] += 1
  elsif a < 2000
    rate[4] += 1
  elsif a < 2400
    rate[5] += 1
  elsif a < 2800
    rate[6] += 1
  elsif a < 3200
    rate[7] += 1
  else
    wild += 1
  end
end

min = rate.select{|r| r != 0 }.count
max = min + wild

puts "#{min} #{max}"