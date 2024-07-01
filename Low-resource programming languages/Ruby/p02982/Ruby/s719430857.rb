n, d = gets.split.map(&:to_i)

xs = []
n.times do |i|
  xs << gets.split.map(&:to_i)
end

cnt = 0
n.times do |i|
  (i+1).upto(n-1) do |j|
    dst = 0
    xs[i].zip(xs[j]) do |a, b|
      dst += (a - b) * (a - b)
    end

    cnt += 1 if (Math.sqrt(dst)).floor ** 2 == dst
  end
end

p cnt
