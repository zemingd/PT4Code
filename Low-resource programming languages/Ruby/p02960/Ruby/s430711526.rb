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
def inli()
  n = gets.to_i
  as = []
  n.times {
    as << gets.split.map(&:to_i)
  }
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
def matrix(n, m=n, init=0)
  Array.new(n).map{Array.new(m,init)}
end

S = s().reverse
M = 10**9+7
mod = 13
dp = matrix(S.size, mod)
if S[0] == "?"
  10.times{|i|
    dp[0][i] = 1
  }
else
  num = S[0].to_i
  dp[0][num] = 1
end
index = 1
S[1..-1].each_char {|ch|
  if ch == "?"
    10.times{|j|
      num = (j.to_i * (10**index))%13
      dp[index-1].each_with_index {|pat, i|
        dp[index][(num+i)%13] += pat
      }
    }
  else
    num = (ch.to_i * (10**index))%13
    dp[index-1].each_with_index {|pat, i|
      dp[index][(num+i)%13] += pat
    }
  end
  mod.times{|i|
    dp[index][i] = dp[index][i]%M
  }
  index += 1

}
p dp[index-1][5]