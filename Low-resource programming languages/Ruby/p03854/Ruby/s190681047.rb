S = gets.chomp.to_s
T = ""
2.times	do
  n = rand(4)
  if n == 0
    T << "dream".reverse
  elsif n == 1
    T << "dreamer".reverse
  elsif n == 2
    T << "erase".reverse
  else
    T << "eraser".reverse
  end
end

if S == T
  puts "Yes"
else
  puts "NO"
end


