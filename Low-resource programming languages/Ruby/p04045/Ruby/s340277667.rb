N,K=gets.split
D=gets.split*""
puts (N..."11"+N).find{|i|i !~/[#{D}]/}