N = STDIN.gets.chomp.to_i
P = STDIN.gets.split(' ').map{|s| s.to_i}

ans = 0
min = []
N.times do |i|
  if i == 0
    min[i] = P[0]
  else
    min[i] = [P[i-1], P[i]].min
  end

  if P[i] <= min[i]
    ans += 1
  end
end

puts ans
