N,M = gets.split(" ").map { |e| e.to_i }
yobo = []
for i in 0..M-1 do
  a,b = gets.split(" ").map { |e| e.to_i }
  yobo << [a,b]
end

yobo.sort! {|a, b| a[1] <=> b[1]}

array = Array.new(N) { 1 }

count = 0
yobo.each do |i|
  arr = array[i[0]..i[1]-1]
  if !arr.include?(0)
    array[i[1]-1] = 0
    count += 1
  end
end

puts count