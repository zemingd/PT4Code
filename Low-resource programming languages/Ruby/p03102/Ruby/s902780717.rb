N, M, C = gets.split.map(&:to_i)
B_m = gets.split.map(&:to_i)
A_nm = N.times.map{|_| gets.split.map(&:to_i)}

ans = 0
N.times do |i|
  ab = 0
  M.times do |j|
    ab += A_nm[i][j] * B_m[j]
  end
  if ab + C > 0
    ans +=1
  end
end
p ans