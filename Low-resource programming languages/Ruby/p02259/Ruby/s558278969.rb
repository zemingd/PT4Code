n=gets.to_i
a=gets.split.map &:to_i
c=0
0.upto(n-2){|i|
  (n-1).downto(i+1){|j|
    if a[j] < a[j-1]
      tmp = a[j]
      a[j] = a[j-1]
      a[j-1] = tmp
      c+=1
    end
  }
}
puts a*" "
p c
