arr_ball_str = gets.chomp.split(' ').map(&:to_s)
arr_ball_cnt = gets.chomp.split(' ').map(&:to_i)
ball_str = gets.chomp.to_s

arr_output = []
arr_ball_str.each_with_index do |str, index|
  if str == ball_str
    arr_output[index] = arr_ball_cnt[index] - 1
  else
    arr_output[index] = arr_ball_cnt[index]
  end
end

puts arr_output.inject {|output, item| output.to_s + ' ' + item.to_s}