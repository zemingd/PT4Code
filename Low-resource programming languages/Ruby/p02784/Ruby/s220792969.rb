H, N = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

if H <= A.inject(:+) then
  puts "Yes"
else
  puts "No"
end
