MOD = 1_000_000_007
io = STDIN
N,M=io.gets.split.map(&:to_i)
ar=M.times.map{io.gets.to_i}
fl=Array.new(N+1,0)
fl.unshift(1)
fl.unshift(0)
ar.each {|i|fl[i+1]=nil}
(2..N+1).each do |i|
  next if  fl[i]==nil
  fl[i]+=(fl[i-1])%MOD if fl[i-1]!=nil
  fl[i]+=(fl[i-2])%MOD if fl[i-2]!=nil
end
p fl[N+1]%MOD
