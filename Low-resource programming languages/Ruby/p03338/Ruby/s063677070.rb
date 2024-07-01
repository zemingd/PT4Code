n = gets.to_i
s = gets.chomp.chars

left = Hash.new(0)
right = Hash.new(0)
s.each { |c| right[c] += 1 }

ans = 0
cnt = 0
s.each do |c|
  left[c] += 1
  right[c] -= 1
  if left[c] == 1 && right[c] > 0
    cnt += 1
  elsif left[c] > 1 && right[c] == 0 
    cnt -= 1
  end
  ans = cnt if ans < cnt
end
puts ans