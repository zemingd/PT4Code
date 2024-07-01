def sort(a, n)
  for i in 0..n-2
    min_index = i
    for j in i+1..n-1
      if a[min_index] > a[j]
        min_index = j
      end
    end
    if min_index != i
      a[i], a[min_index] = a[min_index], a[i]
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