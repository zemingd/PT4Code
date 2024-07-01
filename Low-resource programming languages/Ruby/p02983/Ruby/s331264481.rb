L, R = gets.chomp.split.map(&:to_i)

ans = Float::INFINITY

L.upto(R) do |i|
  ans = [ans, ((i * (i + 1)) % 2019)].min
  break if ans.zero?
end

puts ans