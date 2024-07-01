io = STDIN
N=io.gets.to_i
$hu=Hash.new(){|h,k|h[k]=[]}
(1..N).each do |n|
  a=io.gets.to_i
  a.times do
    x,y=io.gets.split.map(&:to_i)
    $hu[n] << [x,y]
  end
end
def testm(n)
  #n番目の人対する評価
  #key:評価した人
  #value:評価値
  hash=$hu.reject{|k,v|n==k}
  # p ["hash values",hash,hash.values.flatten(1)]
  rtn={}
  # p ["hash",hash]
  hash.each do |k,v|
    ar=v.select{|x,y|x==n}
    ar.each do |x,y|
      rtn[k]=y
    end
  end
  rtn
end
def consistent(bits)
  # honext/unkind
  # bits=[0/1,0/1,....]
  #        1   2 人目
  # $hu i人目証言 [[[2, 0]], [[1, 0]]]
  #            1          2
  (1..N).each do |n|     #n:対象の人
    hash=testm(n)
    return false if bits[n-1]==1 && hash.size>1
    hash.each do |tm,y|
      # p ["bits bits y",[bits[n-1],bits[tm-1],y]]
      return false if bits[n-1]==1 && bits[tm-1]==1 && y==0
    end
  end
  return true
end
ans=0
[0, 1].repeated_permutation(N) do |bits|
  if consistent(bits)
    ans=[ans,bits.count(1)].max
  end
end
puts ans
