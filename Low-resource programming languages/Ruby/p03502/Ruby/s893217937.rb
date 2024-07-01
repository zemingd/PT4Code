n = gets.to_i
fn = n.to_s.split("").map(&:to_i).inject(:+)
if n%fn == 0
  puts "Yes"
else
  puts "No"
end