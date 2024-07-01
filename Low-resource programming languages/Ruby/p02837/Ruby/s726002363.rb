n = gets.to_i
a = []; x = []; y = []

n.times do |i|
  a[i] = gets.to_i
  x << []; y << []
  a[i].times {|j| x[i][j], y[i][j] = gets.split.map(&:to_i) }
end

max = 0

1.upto(2 ** n - 1) do |i|
  flg = nil

  n.times do |j|
    if i[j] == 1
      a[j].times do |k|
        flg = true if y[j][k] ^ i[x[j][k] - 1] == 1
      end
    end
  end

  next if flg

  tmp = i.to_s(2).split('').count {|e| e == '1' }
  max = tmp if max < tmp
end

puts max