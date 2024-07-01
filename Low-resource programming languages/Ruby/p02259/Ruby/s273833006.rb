class String
  def to_ia
    self.split(/\s+/).map {|s| s.to_i}
  end
end
 
class Array
  def rsort
    self.sort {|a, b| b <=> a}
  end

  def swap(i, j)
    t = self[i]
    self[i] = self[j]
    self[j] = t
  end
end

def bubble_sort(ary)
  switch = 0
  flag = true
  while flag
    flag = false
    (1...ary.size).to_a.rsort.each do |i|
      if ary[i] < ary[i-1]
        ary.swap(i, i-1)
        flag = true
        switch += 1
      end
    end
  end
  puts ary.join(" ")
  puts switch
end
 
STDIN.readline
ary = STDIN.readline.to_ia
bubble_sort(ary)