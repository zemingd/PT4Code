N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i).sort.reverse

if H.size <= K
  puts 0
  exit
end

result = 0
H[K..-1].each do |hp|
  result += hp
end

puts result