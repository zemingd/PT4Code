N = gets.to_i
L = gets.split.map(&:to_i).sort.reverse

def inner(i)
  count = 0
  for j in (i+1)..(N-2)
    for k in (j+1)..(N-1)
      if L[i] < L[j] + L[k]
        count += 1
      else
        return count
      end
    end
  end
  count
end

count = 0
for i in 0..(N-3)
  count += inner(i)
end
puts count