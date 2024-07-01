def bubbleSort(a,n)
  count = 0
  flag = true
  while flag
    flag = false
    for j in (1..n-1).to_a.reverse
      if a[j] < a[j-1]
        a[j],a[j-1] = a[j-1],a[j]
        flag = true
        count += 1
      end
    end
  end
  return count
end

n = gets.chomp.to_i
a = gets.chomp.split(" ").map{|x| x.to_i}
count = bubbleSort(a,n)
printf("%s\n",a.join(" "))
printf("%d\n",count)
