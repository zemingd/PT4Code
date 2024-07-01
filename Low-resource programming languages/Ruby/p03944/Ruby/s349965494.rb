# xy  平面上に、左下の座標が (0,0)、右上の座標が (W,H) で、各辺が x 軸か y 軸に平行な長方形があります。
# 最初、長方形の内部は白く塗られています。すぬけ君はこの長方形の中に N 個の点を打ちました。
# i 個目 (1≦i≦N) 点の座標は (xi,yi) でした。
# また、すぬけ君は長さ N の数列 a を決めて、各 1≦i≦N に対し、
# ai=1 のときは長方形の x<xi をみたす領域
# ai=2 のときは長方形の x>xi をみたす領域
# ai=3 のときは長方形の y<yi をみたす領域
# ai=4 のときは長方形の y>yi をみたす領域
# を黒く塗りました。塗りつぶしが終わったあとの長方形内での白い部分の面積を求めてください。

whn = gets.chomp.split
w = whn[0].to_i
h = whn[1].to_i
n = whn[2].to_i

x = Array.new
y = Array.new
a = Array.new
n.times do
    xya = gets.chomp.split
    x << xya[0].to_i
    y << xya[1].to_i
    a << xya[2].to_i
end

white = [[0, 0], [w, h]]

n.times do |i|
    case a[i]
    when 1
        white[0][0] = x[i] if white[0][0] < x[i]
    when 2
        white[1][0] = x[i] if white[1][0] > x[i]
    when 3
        white[0][1] = y[i] if white[0][1] < y[i]
    when 4
        white[1][1] = y[i] if white[1][1] > y[i]
    end
end

height = white[1][0] - white[0][0]
width = white[1][1] - white[0][1]
area = height * width

if area < 0
    area = 0
end

puts area