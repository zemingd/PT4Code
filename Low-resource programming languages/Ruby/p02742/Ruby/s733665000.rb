h, w = gets.split.map(&:to_i)

if h == 1 || w == 1
  puts 1
  exit
end

if h.even? || w.even?
  puts h * w / 2
else
  puts h * w / 2 + 1
end
