s = gets.chomp.split('')

cnt = 0
s.each_with_index do |s, i|
  if s == 'R' && cnt == 0 || s == 'R' && cnt >= 1
    cnt += 1
  end
end
puts cnt