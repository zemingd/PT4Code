def sort(a, n)
  for i in 1..n-1
    min_index = i
    for j in i+1..n
      if a[i-1] > a[j-1]
        min_index = j
      end
    end
    if min_index != i
      a[i-1], a[min_index-1] = a[min_index-1], a[i-1]
    end
  end
  a
end




n,l = gets.chomp.split(" ").map(&:to_i)
a = []

for i in 1..n
  s = gets.chomp.to_s
  a.push(s)
end

a = sort(a, n)

for i in 0..n-1
 print a[i]
end