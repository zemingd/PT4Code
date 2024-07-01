A, B = gets.split(' ').map(&:to_i)
s = gets.chomp
ans = 'Yes'
if s[A] != '-'
  ans = 'No'
else
  s[A] = ''
  s.length.times do |i|
    if !(0..9).to_a.map(&:to_s).include?(s[i])
      ans = 'No'
    end
  end
end

puts ans