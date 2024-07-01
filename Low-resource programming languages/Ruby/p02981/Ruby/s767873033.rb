n,a,b = gets.chomp.split(" ").map(&:to_i)

if a * n < b then
  puts a * n
else
  puts b
end
