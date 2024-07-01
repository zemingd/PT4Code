result = Array.new(26, 0)
$stdin.readlines.map(&:chomp).join.downcase.each_byte do |byte|
  next unless byte.between?(97, 122)
  result[byte - 97] += 1
end
result.each_with_index {|x, i| puts "#{(i + 97).chr} : #{x}"}
