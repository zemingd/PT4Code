X,Y,Z,K = (gets).split(" ").map {|i| i.to_i}

$cakes = []
$cakes[0] = (gets).split(" ").map {|i| i.to_i}
$cakes[1] = (gets).split(" ").map {|i| i.to_i}
$cakes[2] = (gets).split(" ").map {|i| i.to_i}
$cakes[0].sort!.reverse!
$cakes[1].sort!.reverse!
$cakes[2].sort!.reverse!
#p K
#p az

=begin
作戦
* priority queueを使う
* 基本的にある組み合わせの次においしさが大きい組み合わせは、事前の組み合わせから
  １つどこかを変えた組み合わせである
  + そういう組み合わせを最大３つずつキューに入れて取り出していく。すると全部の組み合わせを
    一度に見なくて済む
=end

$memo = []
def memo_check(p)
    x,y,z = p
    return true if not (x<X && y<Y && z<Z)
    m = $memo[x*Y*Z + y*Z + z]
    if m.nil? then
        #$memo[x*Y*Z+y*Z+z] = 0
        m = 0
        return false
    end
    if m != 0 then
        return true
    end
    return false
end
def memo_add(p)
    x,y,z = p
    $memo[x*Y*Z+y*Z+z] = 1
end

def cake_calc(ixs)
    return $cakes[0][ixs[0]] + $cakes[1][ixs[1]] + $cakes[2][ixs[2]]
end

que = [[cake_calc([0,0,0]), [0,0,0]]]
offset = [[1,0,0], [0,1,0], [0,0,1]]
first = cake_calc([0,0,0])

K.times do
    #p que
    ix = que.index( que.max {|a,b| a[0] <=> b[0] } )
    puts que[ix][0]
    me = que[ix][1]
    que.delete_at(ix)
    # 次の候補を入れる
    if que.length > K then
        next
    end
    ne = offset.map {|ofs| ofs.zip(me).map {|o,m| o+m} }
    #ne.select! { |n| n[0] < X && n[1] < Y && n[2] < Z } #計算省略のためにmemo_checkではじいてみる
    ne.each do |n|
        if not memo_check(n) then
            memo_add(n)
            que << [cake_calc(n), n]
        end
    end
end