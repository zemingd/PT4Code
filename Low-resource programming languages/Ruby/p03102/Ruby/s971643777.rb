N,M,C=gets.split.map(&:to_i)
BS=gets.split.map(&:to_i)
AS=N.times.map { gets.split.map(&:to_i) }

cnt = 0
N.times do |i|
  sum=0
  AS[i].zip(BS).each do |a, b|
      sum+=a*b
  end
  cnt+=1 if sum+C>0
end

p cnt
