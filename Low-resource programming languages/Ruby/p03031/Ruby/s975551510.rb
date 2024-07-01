N,M=gets.chomp.split.map(&:to_i)
map=M.times.map { gets.chomp.split.map(&:to_i) }
a=gets.chomp.split.map(&:to_i)
ans=0
[0,1].repeated_permutation(N) {|q|
  r=Array.new(M,0)
  M.times do |i|
    z=0
    map[i][0].times do |j|
      j+=1
      z+=1 if q[map[i][j]-1]==1
    end
    r[i]=1 if z%2==a[i]
  end
  ans+=1 if r.all?{|h| h==1}
}
puts ans