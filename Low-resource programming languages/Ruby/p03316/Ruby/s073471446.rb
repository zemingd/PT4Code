n = gets.to_i
x = 0
x = n.to_s.split(//).map(&:to_i).inject(:+)
if n % x == 0 then
puts "Yes"
else
puts "No"
end