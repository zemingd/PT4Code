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


n = i()
an = li().sort
def solve(n, an)
  if an.size == 2
    return an.max
  end
  a1 = Array.new(n-1)
  a2 = Array.new(n-1)

  (1..(n-1)).each{|i|
    a1[i-1] = get_GCD(an[0], an[i])
  }
  a2[0] = a1[0]

  (2..(n-1)).each{|i|
    a2[i-1] = get_GCD(an[1], an[i])
  }
  min = 10000000000
  index = 0
  (1..n-2).each{|i|
    if min > [a1[i], a2[i]].min
      min = [a1[i], a2[i]].min
      index = i
    end
  }
  a1_c = [*a1]
  a2_c = [*a2]
  a1_c.delete_at(index)
  a2_c.delete_at(index)

  [a1[1..-1].min, a2[1..-1].min, [a1_c.min, a2_c.min].min].max
end

p solve(n, an)
