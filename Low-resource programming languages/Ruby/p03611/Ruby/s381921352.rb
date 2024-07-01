n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

comp = Array.new(arr.max+3,0)

arr.each do |x|
  comp[x] += 1
  comp[x+1] += 1
  comp[x+2] += 1
end

puts comp.max