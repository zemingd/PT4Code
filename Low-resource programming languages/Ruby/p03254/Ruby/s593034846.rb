# 21:30-
n, x = gets.to_s.split.map{|t| t.to_i }
a    = gets.to_s.split.map{|t| t.to_i }.sort

a.each_with_index do |t, i|
  
  if x < t
    puts i
    exit
  end
  
  x -= t
end

if x != 0
  puts n - 1
else
  puts n
end