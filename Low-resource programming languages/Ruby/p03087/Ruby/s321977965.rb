n, q = gets.split.map(&:to_i)
s = gets.chomp

conv = Array.new(n + 2, 0)

(n-1).times do |i|
  if s[i..i+1] == 'AC'
    conv[i+1] = conv[i] + 1
  else
    conv[i+1] = conv[i]
  end
end

q.times do
  l, r = gets.split.map(&:to_i)
  p conv[r-1] - conv[l-1]
end