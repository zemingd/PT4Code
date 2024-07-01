N = gets.to_i
list = [1,6,9,6**2,6**3,6**4,6**5,6**6,9**2,9**3,9**4,9**5].sort
ans = 0
memo = {}
# 自分の数字以下のターゲットになりうる物をtableで持ち、最小の数を入れていく
(1..100001).each{|i|
    target1 = list.select{|x| x <  i}
    target2 = list.select{|x| x == i}
    if target2 != []
        memo[i] = 1
    else
        memo[i] = (target1.map{|x| memo[i-x] + 1}).min
    end
}

puts memo[N]
