gets
aa = gets.split.map(&:to_i)
ans = gets.split.map(&:to_i).sum
cc = gets.split.map(&:to_i)

aa.each_with_index do |a, index|
  ans += cc[a - 1] if aa[index] + 1 == aa[index + 1]
end

puts ans