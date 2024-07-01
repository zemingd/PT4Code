A = []
A << STDIN.gets.split(' ').map{|s|s.to_i}
A << STDIN.gets.split(' ').map{|s|s.to_i}
A << STDIN.gets.split(' ').map{|s|s.to_i}
N = STDIN.gets.to_i
B = []
while line = STDIN.gets
  B << line.to_i
end

bingo = Array.new(3, -1).map{|a| Array.new(3, -1)}
0.upto(2) do |i|
  0.upto(2) do |j|
#    puts "i:#{i} j:#{j}"
    if B.delete(A[i][j])
      bingo[i][j] = 1
    end
  end
end

ans = false
0.upto(2) do |i|
  # line
  unless bingo[i].include?(-1)
    ans = true
    next
  end
  # 列
  unless [bingo[0][i], bingo[1][i], bingo[1][i]].include?(-1)
    ans = true
    next
  end
end

unless [bingo[0][0], bingo[1][1], bingo[2][2]].include?(-1)
  ans = true
end
unless [bingo[0][2], bingo[1][1], bingo[2][0]].include?(-1)
  ans = true
end

if ans
  puts 'Yes'
else
  puts 'No'
end

