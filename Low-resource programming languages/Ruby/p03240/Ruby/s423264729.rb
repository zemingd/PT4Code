# ピラミッド
# 中心座標 (CX,CY): 0 以上 100 以下の整数
# 高さ H: 1 以上の整数
# 座標 (X,Y) の高度は max(H−|X−CX|−|Y−CY|,0)
# i 個目の情報は, 「座標 (xi,yi) の高度は hi である」
# ピラミッドの中心座標と高さを特定

N = gets.to_i
input = readlines.map { |l| l.split.map(&:to_i) }

(0..100).each do |c_x|
  (0..100).each do |c_y|
    current_h = nil

    satisfy_cond = input.all? { |x, y, h|
      temp_h = h + (x - c_x).abs + (y - c_y).abs
      current_h = temp_h if current_h.nil?

      current_h == temp_h
    }

    next unless satisfy_cond

    puts [c_x, c_y, current_h].join(' ')
    exit
  end
end