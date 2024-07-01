numstr = gets.chomp

num_len = numstr.length

like_num = nil
min_diff = nil

(num_len-2).times do |i|
  num = numstr[i..(i+2)].to_i
  diff = (num - 753).abs
  if like_num.nil? || diff < min_diff
    like_num = num
    min_diff = diff
  end
end

p min_diff