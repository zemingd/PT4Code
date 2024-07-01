a,b = gets.split(" ").map { |e| e.to_i }

if b < a
  puts a-1
else
  puts a
end