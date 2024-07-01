
arr = []

loop do
  value = gets.chomp
  break if value == ""

  arr << value.split(" ").map(&:to_i).inject{ |mem, val| mem + val }
end

puts arr.map{ |val| val.to_s.length }