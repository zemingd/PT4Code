N, C = gets.split.map(&:to_i)

max_t = 10**5

programs =  Array.new(C){ Array.new(max_t+10, 0) }

N.times do |i|
  
  s, t, c = gets.split.map(&:to_i)
  c -= 1
  programs[c][s] += 1
  programs[c][t+1] -= 1
  
end

# p programs[0]

C.times do |i|
  
  (1..max_t+1).each do |j|
      programs[i][j] += programs[i][j-1]
      # p ?a if i == 1 && j == 7 
  end
  # (1..max_t+1).each do |j|
  #     programs[i][j] = 1 if programs[i][j] > 1
  # end
end

# p programs[0]

ans = 0
(max_t+2).times do |i|
  
  tmp = 0
  C.times do |j|
    tmp += programs[j][i]
  end
  ans = tmp if ans < tmp
  
end

puts ans
