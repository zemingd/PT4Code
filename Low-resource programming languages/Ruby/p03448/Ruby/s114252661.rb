a = gets.to_i # 2
b = gets.to_i # 2
c = gets.to_i # 2
x = gets.to_i # 100

count = 0

0.upto(a) do |a|
  0.upto(b) do |b|
    0.upto(c) do |c|
      x == (a * 500 + b * 100 + c * 50) && total += 1
    end
  end
end

p count
