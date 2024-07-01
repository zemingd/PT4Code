n = gets.chomp.to_i
inp = gets.split.map(&:to_i)

result = 'YES'
0.upto(n-2) do |x|
  (x + 1).upto(n-1) do |y|
    result = 'NO' if inp[x] == inp[y]
  end
end
puts result