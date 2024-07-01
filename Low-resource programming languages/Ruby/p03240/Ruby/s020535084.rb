N = gets.chomp.to_i
x = []
y = []
h = []

N.times do
  a,b,c = gets.chomp.split.map(&:to_i)
  x << a
  y << b
  h << c
end


# h[i] == 0でないのが1つしかないとき
if h.count(0) == N-1
  N.times do |i|
    if h[i] != 0
      puts [x[i], y[i], h[i]].join(' ')
      exit
    end
  end
end

0.upto(100) do |c_x|
  0.upto(100) do |c_y|
    flag = true
    h_tmp = -1

    N.times do |i|
      next if h[i] == 0

      if h_tmp == -1
        # 登録されていなかったら登録する
        h_tmp = h[i] + (x[i]-c_x).abs + (y[i]-c_y).abs
        next
      end

      if h_tmp != h[i] + (x[i]-c_x).abs + (y[i]-c_y).abs
        flag = false
        break
      end
    end

    if flag
      puts [c_x, c_y, h_tmp].join(' ')
      exit
    end
  end
end
