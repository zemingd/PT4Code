# https://atcoder.jp/contests/abc112/tasks/abc112_c

def calc(cx, cy, h, x, y)
  h + (cx - x).abs + (cy - y).abs
end

N = gets.to_i
xs = Array.new(N)
ys = Array.new(N)
hs = Array.new(N)
N.times do |i|
  xs[i], ys[i], hs[i] = gets.split.map(&:to_i)
end

0.upto(100) do |cx|
  0.upto(100) do |cy|
    h0 = calc(cx, cy, hs[0], xs[0], ys[0])
    if N.times.all? { |i| calc(cx, cy, hs[i], xs[i], ys[i]) == h0 }
      puts "#{cx} #{cy} #{h0}"
      exit 0
    end
  end
end
