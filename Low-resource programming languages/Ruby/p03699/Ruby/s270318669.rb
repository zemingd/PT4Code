n = gets.to_i
input = Array.new
sum = 0
n.times do |i|
  ngo = gets.to_i
  sum += ngo
  input << ngo
end

table = Array.new(n).map{Array.new(sum + 1,false)}
table[0][0] = true
table[0][input[0]] = true

(1..(n-1)).each do |i|
  (sum + 1).times do |j|
    if table[i-1][j] then
      table[i][j + input[i]] = true if j + input[i] <= sum
    end
  end
end

sum.downto(0) do |i|
  n.times do |j|
    if table[j][i] && i % 10 != 0 then
      puts i
      exit
    end
  end
end
puts 0