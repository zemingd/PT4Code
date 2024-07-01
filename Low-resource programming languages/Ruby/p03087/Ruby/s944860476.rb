N, Q = gets.split(' ').map(&:to_i)
s = gets.chomp.split('')
count = [0]

s.length.times do |i|
  count[i + 1] = "#{s[i]}#{s[i + 1]}" == 'AC' ? count[i] + 1 : count[i]
end

Q.times do |i|
  l, r = gets.split(' ').map(&:to_i)
  puts count[r - 1] - count[l - 1]
end