n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

def color(rate)
  if rate < 400
    1
  elsif rate < 800
    2
  elsif rate < 1200
    3
  elsif rate < 1600
    4
  elsif rate < 2000
    5
  elsif rate < 2400
    6
  elsif rate < 2800
    7
  elsif rate < 3200
    8
  end
end

colors = []
god = 0
a.each do |rate|
  if rate >= 3200
    god += 1
  else
    colors.push(color(rate))
  end
end

min = colors.uniq.count
max = min + god

puts "#{min} #{max}"
