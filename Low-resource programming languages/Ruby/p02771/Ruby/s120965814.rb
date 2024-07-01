a, b ,c = gets.split(' ').map!(&:to_i)

ans = 'Yes'
if a == b && b == c
  ans = 'No'
elsif a != b && b != c && c != a
  ans ='No'
end

puts ans
