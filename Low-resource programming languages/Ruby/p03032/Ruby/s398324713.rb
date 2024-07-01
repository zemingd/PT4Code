n,k = gets.split(' ').map(&:to_i)
juwel_list = gets.split(' ').map(&:to_i)
max = 0
(1..k).each do |i|
  (0...i).each do |j|
    out_num = i - j
    in_num = j
    break if out_num - in_num <= 0
    next if out_num - in_num > n
    (0..out_num).each do |k|
      left = out_num - k
      right = k
      tmp_max = (juwel_list[0...left] + juwel_list.slice(n - right,right)).sort.reverse.slice(0,out_num - in_num).inject(:+)
      max = tmp_max if max < tmp_max
    end
  end
end
puts max