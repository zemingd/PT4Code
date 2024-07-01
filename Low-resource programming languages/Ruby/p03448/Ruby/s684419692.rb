A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i
count = 0
# binding.pry
0.upto(A) do |i|
  0.upto(B) do |j|
    # 0.upto(C) do |k|
    #   count += 1 if 500*i + 100*j + 50*k == X
    # end
    pre = X - 500*i - 100*j
    if pre / 50 >= 0 && pre / 50 <= C && pre % 50 == 0
      count += 1
    end
  end
end
puts count