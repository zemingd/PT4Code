n=gets.to_i
as=gets.split.map(&:to_i).sort.reverse
a=0
b=0
i=0
while i<n-1
  if as[i]==as[i+1]
    if a==0
      a=as[i]
    elsif b==0
      b=as[i]
    end
    i+=1
  end
  break if a>0 && b>0
  i+=1
end
puts a*b
