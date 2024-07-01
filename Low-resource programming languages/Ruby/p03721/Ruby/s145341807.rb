N,K=gets.split.map &:to_i
as=N.times.map {gets.split.map(&:to_i)}

arr=Array.new(as[0][1],as[0][0])
(1...N).each do |i|
  idx=arr.bsearch_index{|x|as[i][0]<=x}

  if idx.nil?
    arr=arr+Array.new(as[i][1],as[i][0])
  else
    arr=arr[0..idx]+Array.new(as[i][1],as[i][0])+arr[idx..-1]
  end
end
p arr[K-1]
