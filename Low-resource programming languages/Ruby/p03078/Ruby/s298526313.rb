class PrioirtyQueue
  
  def initialize()
    @val = []
  end

  def push(x)
    @val.push(x)
    idx = @val.size - 1
    while (idx > 0 and @val[idx-1][0] < @val[idx][0])
      @val[idx - 1], @val[idx] = @val[idx], @val[idx - 1]
      idx = idx - 1
    end
  end

  
  def top()
    return @val[0]
  end

  def lastPop()
    return @val.pop()
  end
  
  def pop()
    res = @val[0]
    @val.shift()
    return res
  end

  def getVal()
    return @val
  end

  def size()
    return @val.size
  end
end


X, Y, Z, k = gets.chomp.split(' ').map{|x| x.to_i}
A = gets.chomp.split(' ').map{|x| x.to_i}.sort.reverse
B = gets.chomp.split(' ').map{|x| x.to_i}.sort.reverse
C = gets.chomp.split(' ').map{|x| x.to_i}.sort.reverse

q = PrioirtyQueue.new()
q.push([A[0]+B[0]+C[0], 0, 0, 0])


def push(q, used, v, a, b, c)
  key = [a, b, c].to_s
  if used.key?(key)
    return
  end
  used[key] = 1
  q.push([v, a, b, c])
end

used = {}     
while k != 0
  ans, a, b, c = q.pop()
  k -= 1
  p ans
  
  if a < X-1
    push(q, used, A[a + 1] + B[b] + C[c], a + 1, b, c)
  end
  if b < Y-1
    push(q, used, A[a] + B[b + 1] + C[c], a, b + 1, c)
  end
  if c < Z-1
    push(q, used, A[a] + B[b] + C[c + 1], a, b, c + 1)
  end

  while q.size > k
    q.lastPop()
  end
    
end





