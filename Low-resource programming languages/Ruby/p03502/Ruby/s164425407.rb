N = gets.to_i
m = N.to_s.chars.map(&:to_i).inject(:+)
if N.modulo(m).zero?
  puts "Yes"
else
  puts "No"
end
