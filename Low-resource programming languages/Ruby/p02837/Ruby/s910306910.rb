n=gets.to_i
a=(1..n).map{
  (1..gets.to_i).map{
    gets.split.map(&:to_i)
  }
}
p (0...2**n).select{|b|
  (0...n).all?{|i|
    b[i]==0 || a[i].all?{|x,y|b[x-1]==y}
  }
}.map{|b|b.to_s(2).count(?1)}.max
