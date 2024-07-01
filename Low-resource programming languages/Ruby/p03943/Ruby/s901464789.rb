abc = gets.split.map(&:to_i)
abc.each_with_index do |e, i|
  copy = abc.dup
  copy.delete_at(i)
  if (copy[0] + copy[1]) == e || (copy[0] - copy[1]).abs == e
    puts('YES')
    exit
  end
end
puts('NO')