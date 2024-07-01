def s()
  gets().chomp
end
def i()
  gets.to_i
end
def li()
  gets.split.map(&:to_i)
end
def ili()
  n = gets.to_i
  as = gets.split.map(&:to_i)
  [n, as]
end
class Array
  def sum
    total = 0
    self.each do |item|
      total += item
    end
    total
  end
end

def naive(n, as)
  max = as.max
  res = 0
  (max*1000).times{|i|
    temp = 0
    as.each{|a|
      temp += i%a
    }
    res = temp > res ? temp : res
  }
  return res
end

n = i()
as = li()

puts as.sum - n

