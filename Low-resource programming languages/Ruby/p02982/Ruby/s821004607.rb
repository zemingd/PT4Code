n, d = gets.strip.split(" ").map(&:to_i)

xs = Array.new(n) do
  gets.strip.split(" ").map(&:to_i)
end

ans = 0

0.upto(n - 2) do |i|
  (i + 1).upto(n - 1) do |j|
    s = 0
    d.times do |k|
      s += (xs[i][k] - xs[j][k])**2
    end

    if Math.sqrt(s).to_s.split(".").last == "0"
      ans += 1
    end
  end
end

puts ans
