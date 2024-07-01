a_start, a_sp = gets.split.map(&:to_i)
b_start, b_sp = gets.split.map(&:to_i)
t = gets.to_i

(1..t).each do |s|
  if a_start + a_sp * s >= b_start + b_sp * s
    puts "YES"
   	exit
  end
end

puts "NO"