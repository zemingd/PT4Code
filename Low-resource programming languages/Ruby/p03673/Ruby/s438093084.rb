gets
input = gets.chomp.split(' ')
ans = []
input.each do |ch|
  ans << ch
  ans.reverse!
end

puts ans.join(' ')
