N, Y = gets.split(' ').map(&:to_i)

count = [-1, -1, -1]
is_break = false

aaa = [Y/10000, N].min
(0..aaa).each do |i|
  bbb = [(Y-10000*i)/5000, N-i].min
  (0..bbb).each do |j|
    if 10000*i + 5000*j + 1000*(N-i-j) >= Y
      ccc = [(Y-10000*i-5000*j)/1000, N-i-j].min
      (0..ccc).each do |k|
        if 10000*i + 5000*j + 1000*k == Y
          count = [i, j, k]
          is_break = true
          break
        end
      end
    end
  end
  break if is_break
end

ans = count[0].to_s + ' ' + count[1].to_s + ' ' + count[2].to_s
p ans
