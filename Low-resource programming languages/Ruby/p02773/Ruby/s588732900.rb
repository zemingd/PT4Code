n=gets.to_i
m=nil
$<.sort.chunk(&:to_s).map{|r| [r[0],r[1].size] }.each_with_index.sort_by{|r,i| i-n*r[1] }.each{|r|
  break if r[0][1]!=m||=r[0][1]
  print r[0][0]
}