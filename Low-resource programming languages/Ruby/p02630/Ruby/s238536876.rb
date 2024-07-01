_n=gets.to_i
a=gets.split.map &:to_i
q=gets.to_i
q.times.map do
  res=0
  b,c = gets.split.map &:to_i
  a.each_with_index do |e,i|
    if e==b
      a[i]=c
      res+=c
    else
      res+=e
    end
  end
  puts res
end
