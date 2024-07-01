N=gets.to_i
as=gets.split.map(&:to_i)
cnt_m=0
cnt=0
as.each do |e|
  cnt+=1 if e<0
end
as=as.map{|e|e.abs}.sort
puts cnt.even? ? as.inject(:+) : as.inject(:+)-as[0]*2
