n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
count = 0
0.upto(n-1) do |i|
  if a[i]>b[i]
    count+=b[i]
    a[i]-=b[i]
    b[i]=0
  else
    count+=a[i]
    b[i]-=a[i]
    a[i]=0
    if a[i+1] > b[i]
      count+=b[i]
      a[i+1]-=b[i]
      b[i]=0
    else
      count+=a[i+1]
      b[i]-=a[i+1]
      a[i+1]=0
    end
  end
end
puts count
