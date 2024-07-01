N = gets.to_i
P = gets.split.map &:to_i

count = 0
P.each_with_index do |p,i|
  if p != i+1
    count += 1
  end
end

puts count <= 2 ? "Yes" : "No"