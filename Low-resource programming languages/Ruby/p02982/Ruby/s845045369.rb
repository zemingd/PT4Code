N, D = gets.split.map(&:to_i)

x = []
N.times do
  x << gets.split.map(&:to_i)
end

r = 0
0.upto(N - 1) do |i|
  (i + 1).upto(N - 1) do |j|
    d1 = x[i]
    d2 = x[j]

    s = 0
    d1.each_with_index do |d, i|
      s += ((d - d2[i]).abs) ** 2
    end

    if (Math.sqrt(s).to_i ** 2) == s
      r += 1
    end
  end
end

puts r