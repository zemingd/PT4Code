n = gets.to_i

ret = []
n.to_s.split('').map do |i|
  if i == '1'
    ret << 9
  elsif i == '9'
    ret << 1
  else
    ret << i.to_i
  end
end
puts ret.join
