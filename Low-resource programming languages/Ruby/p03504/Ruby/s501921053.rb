lines = $stdin.read
array = lines.split("\n")

TIME = 10**5*2
#TIME = 30

N,C = array[0].split(" ").map(&:to_i)

cumsum = Array.new(C).map{Array.new(TIME,0)}

array[1..N+1].each do |rec|
  s,t,c  = rec.split(" ").map(&:to_i)
  s,t=s*2-1,t*2     # double
  s,t,c=s-1,t-1,c-1 # 0-indexed
  cumsum[c][s] += 1
  cumsum[c][t] -= 1
end

ans = cumsum.map! do |cumrow|
  sum = cumrow.dup
  for i in 1...cumrow.length
    sum[i] += sum[i-1]
  end
  sum
end.transpose.map{|row| row.inject(&:+)}

puts ans.max