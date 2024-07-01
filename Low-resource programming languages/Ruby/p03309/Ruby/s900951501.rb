N = gets.to_i
a_list = gets.split.map(&:to_i)
diff_list = a_list.map.with_index do |a, i|
  a - i - 1
end.sort

def calc(diff_list, b)
  diff_list.map do |d|
    (d - b).abs
  end.reduce(&:+)
end

ans = calc(diff_list, diff_list[(N / 2) - 1])
puts ans
