def get_i() #空白区切の入力を数値(整数)の配列で返す
  return gets.chomp.split(" ").map(&:to_i)
end
def get_f() #空白区切の入力を数値(実数)の配列で返す
  return gets.chomp.split(" ").map(&:to_f)
end
def get() #空白区切の入力を文字列の配列で返す
  return gets.chomp.split(" ")
end
def get_nsp() #入力されたものを一文字ずつに区切った文字列の配列で返す
  return gets.chomp.split("")
end
def yn_judge(bool,y="Yes",n="No") #boolに真偽を投げることで、trueならy、falseならnの値を出力する
  return bool ? y : n 
end
def array(size1,init=nil,size2=-1) #size2に二次元配列時の最初の要素数、size1に次の配列の大きさ、initに初期値を投げることでその配列を返す
  if size2==-1
    return Array.new(size1){init}
  else
    return Array.new(size2){Array.new(size1){init}}
  end
end

N,Q=get_i
tree=array(N)
$lazy=array(N,0)
$ans=array(N,0)
(N-1).times do|i|
    a,b=get_i
    a-=1
    b-=1
    tree[a]=[] if tree[a].nil?
    tree[a].push(b)
    tree[b]=[] if tree[b].nil?
    tree[b].push(a)
end
Q.times do|i|
    p,x=get_i
    p-=1
    $lazy[p]+=x
end
def bfs(g,r)
    queue=[]
    queue.push(r)
    visit=array(N,false)
    until queue==[]
        cur=queue.shift
        visit[cur]=true
        next if $lazy[cur].zero?
        $ans[cur]+=$lazy[cur]
        if g[cur].nil?
            $lazy[cur]=0
            next
        end
        g[cur].each do|v|
            next if visit[v]
            $lazy[v]+=$lazy[cur]
            queue.push(v)
        end
        $lazy[cur]=0
    end
end
N.times do|i|
  bfs(tree,i) unless $lazy[i].zero? 
end
puts $ans.join(" ")