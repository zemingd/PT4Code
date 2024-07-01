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

vs = vs.select { |v| v.h > 0 }

0.upto(100) do |cx|
  0.upto(100) do |cy|
    h0 = calc(cx, cy, vs[0])
    if vs.drop(1).all? { |v| calc(cx, cy, v) == h0 }
      puts "#{cx} #{cy} #{h0}"
      exit 0
    end
  end
end
