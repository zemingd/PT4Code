(N, Q) = gets.split.map(&:to_i)
S = gets.chomp

point = []

(N-1).times do |i|
  if S[i...i+2] == 'AC'
    point << i
  end
end

Q.times do
  l = gets.split.map(&:to_i)
  result = 0
  point.each do |p|
    next if p < l[0] - 1
    break if p + 1 > l[1] - 1
    result += 1
  end
  puts result
end
