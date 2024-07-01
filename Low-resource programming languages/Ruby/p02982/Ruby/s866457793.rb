n, d = gets.chomp.split(" ").map(&:to_i) 
array =[]

(1..n).each do
  array.push(gets.chomp.split(" ").map(&:to_i))
end

cnt = 0
array.combination(2) do |first, second|
  sum = 0
  (0...d).each do |number|
    sum += (first[number] - second[number]) ** 2
  end
  cnt += 1 if (sum ** 0.5).to_i == (sum ** 0.5)
end

puts cnt