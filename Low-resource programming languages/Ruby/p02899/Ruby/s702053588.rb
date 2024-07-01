n = gets.to_i
a = gets.split.map(&:to_i)

ans = (a.find_index(1)+1).to_s
2.upto(n) do |i|
  ans += ' ' + (a.find_index(i)+1).to_s
end

puts ans