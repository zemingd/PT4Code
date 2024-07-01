def judge(str)
  size = str.size
  (size/2).times do |i|
    return false unless str[i] == str[size-1-i]
  end
  true
end

a, b = gets.split(' ').map(&:to_i)
ret = 0
(a..b).each do |num|
  str = num.to_s.split('')
  ret += 1 if judge(str)
end
puts ret
