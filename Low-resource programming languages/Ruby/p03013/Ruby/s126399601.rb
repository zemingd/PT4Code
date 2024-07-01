N, M = gets.strip.split.map(&:to_i)
m = []
M.times do
  m << gets.strip.to_i
end

n=Array.new(N+1, 0)

n[0]=1
n[1]=1

m.each{|i| n[i]= nil}
n[1]= n[1].to_i
S=1000000007

(2).upto(N){|i|
  n[i] = n[i] ? n[i-1]+n[i-2] : 0
}
puts n[N].to_i % S