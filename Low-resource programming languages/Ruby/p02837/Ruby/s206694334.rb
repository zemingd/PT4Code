n = gets.to_i
h = Array.new(n+1) { Array.new }
m = Array.new(n+1) { Array.new }
(1..n).each do |t|
  ai = gets.to_i
  ai.times do
    x, y = gets.split.map(&:to_i)
    m[t] << x if y == 0
    h[t] << x if y == 1
  end
end
max = 0
(n ** 2 - 1).times do |pattern|
  catch(:hoge) do
    n.times do |i|
      next if 1<<i & pattern == 0

      m[i+1].each do |m|
        throw(:hoge) if pattern[m-1] != 0
      end

      h[i+1].each do |h|
        throw(:hoge) if pattern[h-1] != 1
      end
    end
    max = [max, pattern.to_s(2).count('1')].max
  end
end
puts max