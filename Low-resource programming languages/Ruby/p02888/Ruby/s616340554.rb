n=gets.strip.to_i
ll=gets.strip.split.map(&:to_i).sort

result=0
(0..n-2).each do |i|
  k=i+2
  a=ll[i]
  (i+1..n-1).each do |j|
    b=ll[j]
    while (k<n && ll[k]<a+b)
      k+=1
      result+=1
    end
  end
end

p result

