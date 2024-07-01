N, M = gets.strip.split.map(&:to_i)
m = []
M.times do
  m << gets.strip.to_i
end

n=[]
n[0]=1
n[1]= m.include?(1) ? 0 : 1

S=1000000007

(2).upto(N){|i|
  n[i]= m.include?(i) ? 0 : n[i-1]+n[i-2]
}
puts n[N] % S