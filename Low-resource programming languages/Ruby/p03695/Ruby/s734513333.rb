n = STDIN.gets.split.map(&:to_i)
at_coders = STDIN.gets.split.map(&:to_i)

def color(num)
  if 1 <= num && num < 400
    0
  elsif 400 <= num && num < 800
    1
  elsif 800 <= num && num < 1200
    2
  elsif 1200 <= num && num < 1600
    3
  elsif 1600 <= num && num < 2000
    4
  elsif 2000 <= num && num < 2400
    5
  elsif 2400 <= num && num < 2800
    6
  elsif 2800 <= num && num < 3200
    7
  else
    nil
  end
end

res = Hash.new
over = 0

at_coders.each do |ac|
  c = color(ac)
  if c
    res[c]=1
  else
    over+=1
  end
end

normal_color = res.keys.size
min_color = max_color = normal_color

over.times do |o|
  if min_color == 0
    min_color += 1
  end
  max_color += 1
end

if max_color > 8
  max_color = 8
end

puts "#{min_color} #{max_color}"
