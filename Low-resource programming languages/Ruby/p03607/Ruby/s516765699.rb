n = gets.chomp.to_i
as = []

n.times do
  a = gets.chomp.to_i
  if as.include?(a)
    as.delete(a)
  else
    as << a
  end
end

puts as.size
