nums = gets.split.map(&:to_i)
ans = 1
nums.each do |n|
  if n == 0
    puts ans
    exit
  else
    ans += 1;
  end
end
