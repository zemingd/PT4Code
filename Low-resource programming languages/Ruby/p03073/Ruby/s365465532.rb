S = gets.chomp

b = 0
w = 0
(S.length-1).times do |i|
  if i.even?
    if S[i] == '0'
      b += 1
    else
      w += 1
    end
  else
    if S[i] == '0'
      w += 1
    else
      b += 1
    end
  end
end

puts [w,b].min