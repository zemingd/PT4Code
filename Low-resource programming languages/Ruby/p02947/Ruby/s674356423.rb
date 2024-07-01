n = gets.to_i
answer = 0
n.times.map do
  hash = Hash.new(0)
  gets.chomp.each_char do |c|
    hash[c] += 1
  end
  hash
end.combination(2) do |a, b|
  answer += 1 if a == b
end

puts answer