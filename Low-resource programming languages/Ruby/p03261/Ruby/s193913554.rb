n = gets.to_i

f = true
h= {}
prev = ''
n.times do |i|
  s = gets.chomp
  f = false if h.has_key?(s)
  f = false if prev != '' && prev != s[0]
  h[s] = true
  prev = s[-1]
end

if f
  puts 'Yes'
else
  puts 'No'
end
