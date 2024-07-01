
arr = []

loop do
  value = gets.chomp.split(" ")
  break if value.empty?
  value.map(&:to_i)

  arr << value.map(&:to_i).inject{ |mem, val| mem + val }
end

puts arr.map{ |val| val.to_s.length }