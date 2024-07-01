h,a = gets.chomp.split(" ").map(&:to_i)

if h % a == 0 then
  puts h / a
else
  puts h / a + 1
end
