n = gets.to_i
s = gets.chomp

min = n

(0...n).each do |i|
  if i == 0
    cnt = s[1...n].delete('W').size
  elsif i == n
    cnt = s[0...n-1].delete('E').size
  else
    cnt = s[0...i].delete('E').size + s[i+1...n].delete('W').size
  end
  min = cnt if cnt < min
end
puts min