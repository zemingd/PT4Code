X = gets.to_i
X5 = Hash.new
ans = nil

(0 .. X).find do |a|
  a5 = a ** 5
  X5[a5] = a
  
  b5 = a5 - X
  
  if X5[b5]
    b = X5[b5]
  elsif X5[-b5]
    b = -X5[-b5]
  end
  if b
    ans = [a, b]
  end
end
puts ans.join(' ')
