H, W = gets.split.map(&:to_i)
A = readlines.map{|l| l.chomp.split(//)}
 
hs = (0 ... H).select{|h| A[h].uniq == ['#']}
ws = (0 ... W).select{|w| A.transpose[w].uniq == ['#']}
A.values_at(*[*0 ... H] - hs).transpose.values_at(*[*0 ... W] - ws).transpose.each{|l| puts l.join('')}