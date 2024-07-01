while
  a =gets.split.map(&:to_i)
  if a[0]==0&&a[1]==0
    break
  end
  if a[0]>a[1]
    temp=a[0]
    a[0]=a[1]
    a[1]=temp
  end
  b=a.join(" ")
    puts b
end