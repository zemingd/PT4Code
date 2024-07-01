_n=gets.to_i
h=Hash.new(0)
a=gets.split.each_with_object([]) do |e, m|
  i = e.to_i
  m << i
  h[i]+=1
end
q=gets.to_i
res=a.inject(:+)
q.times do
  b,c = gets.split.map &:to_i 
  if h.keys.include?(b)
    v=h[b]
    if h.keys.include?(c)
      h[c]+=v
    else
      h[c]=v
    end
    dec = v * b
    inc = v * c
    res-=dec unless dec.nil?
    res+=inc unless inc.nil?
    h.delete(b)
  end
  puts res
end
