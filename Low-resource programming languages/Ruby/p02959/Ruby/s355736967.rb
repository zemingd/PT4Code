io = STDIN
N=io.gets.to_i
a=io.gets.split.map(&:to_i)
b=io.gets.split.map(&:to_i)
cnt=0
b.each_with_index do |bb,i|
  if a[i]+a[i+1]<bb
    cnt +=a[i]+a[i+1]
    a[i+1]=0
  else     #a[i]+a[i+1]>bb
    if  a[i]<bb
      cnt+=bb
      a[i+1]-=bb-a[i]
    else
      cnt+=bb
    end
  end
end
puts cnt
