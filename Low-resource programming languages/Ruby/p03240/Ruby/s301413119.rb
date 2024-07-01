# https://atcoder.jp/contests/abc112/tasks/abc112_c

def calc(cx, cy, v)
  v.h + (cx - v.x).abs + (cy - v.y).abs
end

V = Struct.new(:x, :y, :h)

N = gets.to_i
vs = Array.new(N)

N.times do |i|
  vs[i] = V.new(*gets.split.map(&:to_i))
end

0.upto(100) do |cx|
  0.upto(100) do |cy|
    h0 = calc(cx, cy, vs.find { |v| v.h > 0 })
    f = vs.all? do |v|
      h = calc(cx, cy, v)
      (v.h > 0 && h == h0) || (v.h == 0 && h >= h0)
    end
    if f
      puts "#{cx} #{cy} #{h0}"
      exit 0
    end
  end
end
