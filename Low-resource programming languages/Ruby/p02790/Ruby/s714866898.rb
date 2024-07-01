a,b = gets.split(" ").map(&:to_i)

ab_s = ""
ba_s = ""

(1..b).each do |n|
  ab_s += a.to_s
end

(1..a).each do |n|
  ba_s += b.to_s
end

array = [ab_s,ba_s]
array = array.sort

puts array[0]