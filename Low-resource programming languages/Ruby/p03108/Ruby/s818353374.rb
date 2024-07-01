class UnionFind
  def initialize(size)
    @rank = Array.new(size, 0)
    @parent = Array.new(size, &:itself)
    $count = Array.new(size, 1)
  end

  def unite(id_x, id_y)
    x_parent = get_parent(id_x)
    y_parent = get_parent(id_y)
    return if x_parent == y_parent
    
    sumcount=$count[x_parent]+$count[y_parent]
    $count[x_parent]=sumcount
    $count[y_parent]=sumcount

    if @rank[x_parent] > @rank[y_parent]
      @parent[y_parent] = x_parent
    else
      @parent[x_parent] = y_parent
      @rank[y_parent] += 1 if @rank[x_parent] == @rank[y_parent]
    end
  end

  def get_parent(id_x)
    @parent[id_x] == id_x ? id_x : (@parent[id_x] = get_parent(@parent[id_x]))
  end

  def same_parent?(id_x, id_y)
    get_parent(id_x) == get_parent(id_y)
  end
  
  def self.sayparent
    puts @parent
  end
end

n,m=gets.split.map(&:to_i)
a, b = m.times.map{gets.split.map(&:to_i)}.transpose
union=UnionFind.new(n)
a=a.reverse
b=b.reverse
max=n*(n-1)/2
answer=0
answerArray=[]

m.times{|i|
    if union.same_parent?(a[i]-1,b[i]-1)
        answerArray<<answer
    else
         answer+=$count[union.get_parent(a[i]-1)]*$count[union.get_parent(b[i]-1)]
         union.unite(a[i]-1,b[i]-1)
         answerArray<<answer
    end
}


answerArray=answerArray.reverse

ll=answerArray.length
i=1

(ll-1).times{
    puts max-answerArray[i]
    i+=1
}

puts max