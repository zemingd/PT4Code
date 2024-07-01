strs = gets.chomp.split(" ").map(&:to_i).sort

ans = 0
strs.each_with_index do |num, idx|
  break if idx == strs.length - 1
  ans += strs[idx+1] - num
end
puts ans