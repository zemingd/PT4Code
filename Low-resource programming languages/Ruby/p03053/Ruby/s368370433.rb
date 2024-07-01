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

def eratosthenes(size)
  prime_list = []
  is_prime = Array.new(size, true)
  is_prime[0] = false
  is_prime[1] = false

  2.upto(size-1){|i|
    if is_prime[i]
      prime_list << i
      (2).upto((size.to_f/i).ceil-1){|j|
        is_prime[j*i] = false
      }
    end
  }
  [prime_list, is_prime]
end

def dijkstra(s, e, cost)
  size = cost.length
  if s==e
    return 0
  end
  dp = {}
  dp[s] = 0
  undefined_node = {}
  size.times{|i|
    if i != s
      undefined_node[i] = cost[s][i]
    end
  }
  while undefined_node.length != 0
    min = undefined_node.min_by{|_, v| v}
    stock = {}
    temp = undefined_node.clone
    temp.each{|k, v|
      if min[1] == v
        undefined_node.delete(k)
        if k == e
          return v
        end
        dp[k] = v
        stock[k] = v
      end
    }

    stock.each{|k, v|
      undefined_node.each{|k2, v2|
        undefined_node[k2] = v + cost[k][k2] < v2 ?  v + cost[k][k2] : v2
      }
    }
  end
end

def get_bits(len)
  res =  []
  (2**len).times{|i|
    res << i.to_s(2).rjust(len, '0')
  }
  res
end

def get_GCD(m, n)
  tmp = [n, m].max
  n = [n, m].min
  m = tmp
  while n != 0
    tmp = m % n
    m = n
    n = tmp
  end
  m
end

h, w = li()
a = []
costs = Array.new(h).map{Array.new(w,nil)}
blacks = []
h.times {
  a << s()
}

h.times {|i|
  w.times { |j|
    if a[i][j] == "#"
      blacks << [i, j]
      costs[i][j] = 0
    end
  }
}

def canSetValue?(v, cur)
  v==nil or v > cur
end


while !blacks.empty?
  i, j =blacks.pop()
  cur = costs[i][j] + 1
  if i > 0 and canSetValue?(costs[i-1][j], cur)
    costs[i-1][j] = cur
    blacks.unshift([i-1, j])
  end
  if i < h-1 and canSetValue?(costs[i+1][j], cur)
    costs[i+1][j] = cur
    blacks.unshift([i+1, j])
  end
  if j > 0 and canSetValue?(costs[i][j-1], cur)
    costs[i][j-1] = cur
    blacks.unshift([i, j-1])
  end
  if j < w-1 and canSetValue?(costs[i][j+1], cur)
    costs[i][j+1] = cur
    blacks.unshift([i, j+1])
  end
end

max =0 

costs.each {|cost|
   max = max > cost.max ? max : cost.max
}

p max