D = gets.to_i

ans = ['Christmas']
(25-D).times do |n|
  ans << 'Eve'
end

puts ans.join(' ')