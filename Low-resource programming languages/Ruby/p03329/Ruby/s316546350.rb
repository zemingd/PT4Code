n = gets.chomp.to_i

count = Array.new(n+1, 10000000000000)

count[0] = 0
1.upto(n) do |i|
  u = count[i-1] + 1
  count[i] = u if u < count[i]
  1.upto(6) do |t|
    a = 6 ** t
    if a <= i
      b = count[i-a] + 1
      count[i] = b if b < count[i]
    end
    c = 9 ** t
    if c <= i
      d = count[i-c] + 1
      count[i] = d if d < count[i]
    end
  end
end
p count[n]
