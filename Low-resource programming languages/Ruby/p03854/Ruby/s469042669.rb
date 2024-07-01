S = gets.chomp.to_s
T = ""
for i in 1..2
  n = rand(4)
  if n == 0
    T << "dream"
  elsif n == 1
    T << "dreamer"
  elsif n == 2
    T << "erase"
  else
    T << "eraser"
  end
end

if S == T
  puts "Yes"
else
  puts "NO"
end


