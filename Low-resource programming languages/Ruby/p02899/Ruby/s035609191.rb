n = gets.to_i

n_array = [*1..n]

a = gets.split(" ").map(&:to_i)

aa = a.each_with_index.sort

aa.map! do |i|
  i[1] + 1
end

puts aa.join(" ")