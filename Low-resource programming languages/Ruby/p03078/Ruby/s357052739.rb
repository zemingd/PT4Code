class Priority_queue
  attr_accessor :a
  def initialize(max)
    @h = 0
    @a = Array.new(max+1)
    @INF = 1<<30
  end
  
  def max_heapify(i)
    l = 2*i
    r = 2*i+1
    
    if l<=@h && @a[l][0]>@a[i][0]
      largest = l
    else
      largest = i
    end
    
    if r<=@h && @a[r][0] > @a[largest][0]
      largest = r
    end
    
    if largest != i
      @a[i], @a[largest] = @a[largest], @a[i]
      max_heapify(largest)
    end
  end
  
  def extract
    if @h < 1
      return [-@INF]
    end
    
    maxv = @a[1]
    @a[1] = @a[@h]
    @h-=1
    max_heapify(1)
    return maxv
  end
  
  def increase_key(i, key)
    if key[0] < @a[i][0]
      return
    end
    
    @a[i] = key
    
    while i>1 && @a[i/2][0] < @a[i][0]
      @a[i], @a[i/2] = @a[i/2], @a[i]
      i = i/2
    end
  end
  
  def insert(key)
    @h+=1
    @a[@h] = [-@INF]
    increase_key(@h, key)
    
    return key.to_s
  end
end

def is_used?(memo, ary)
  return flag
end

q = Priority_queue.new(15)

memo = []
xmax,ymax,zmax,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse
b = gets.split.map(&:to_i).sort.reverse
c = gets.split.map(&:to_i).sort.reverse

q.insert([a[0]+b[0]+c[0], 0, 0, 0])

k.times do
  #p q.a
  sum,s,t,u = q.extract
  p sum
  #p [sum,s,t,u]

  if s+1<xmax
    if !q.a.include?(key = [a[s+1]+b[t]+c[u],s+1,t,u])
      q.insert(key)
    end
  end
  
  if t+1<ymax
    if !q.a.include?(key = [a[s]+b[t+1]+c[u],s,t+1,u])
      q.insert(key)
    end
  end
  
  if u+1<zmax
    if !q.a.include?(key = [a[s]+b[t]+c[u+1],s,t,u+1])
    q.insert(key)
    end
  end
end
