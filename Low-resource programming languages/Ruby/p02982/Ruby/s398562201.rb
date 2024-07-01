n, d = gets.chomp.split.map(&:to_i)

xs = Array.new(d)

n.times do |i|
  xs[i] = gets.chomp.split.map(&:to_i)
end

cnt = 0

n.times do |i|
  x1 = xs[i]
  
  (i + 1).upto(n - 1) do |j|
    x2 = xs[j]
    
    sum = 0
      
    res = x1.zip(x2) do |a, b|
      sum += (a - b) ** 2
    end
    
    sum = sum **(1/2.0)
    
    cnt += 1 if sum == sum.to_i
  end
end

puts cnt