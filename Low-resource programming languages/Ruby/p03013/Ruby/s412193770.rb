n,m = gets.split.map(&:to_i)
a = []
MD = 10**9+7

m.times do
  a << gets.to_i
end

step = []
step[0] = 0
step[1] = a.include?(1) ? 0 : 1
step[2] = a.include?(2) ? 0 : step[1]+1
(3..n).each do |i|
  if not a.include?(i)
    step[i] = (step[i-1]+step[i-2])%MD
  else
    step[i] = 0
  end
end

puts step[-1]
