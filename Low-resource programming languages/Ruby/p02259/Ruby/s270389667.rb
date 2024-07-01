class Array
  def swap(x, y)
    self[x], self[y] = self[y], self[x]
  end
end

def bubbleSort(n, a)
  c = 0
  n.times{|i|
    (n-1).downto(i+1){|j|
      a[j]<a[j-1]&&a.swap(j,j-1)&&c+=1
    }
  }
  return a, c
end

a, c = bubbleSort(gets.to_i, gets.split.map(&:to_i))
puts a.join(" ")
puts c