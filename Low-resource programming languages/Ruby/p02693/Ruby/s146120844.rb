k=gets.to_i
a,b=gets.split.map &:to_i
nums = [*(a..b)]
nums.each do |num|
  b = true if num%k == 0
end
p b == true ? 'OK' : 'NG'