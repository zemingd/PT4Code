h,w = gets.chomp.split(" ").map(&:to_i)

if h == 1 || w == 1 then
  puts 1
elsif h * w % 2 == 0 then
  puts h * w / 2
else
  puts h * w / 2 + 1
end
