N, Q = gets.split(" ").map(&:to_i)

tree = {} # ハッシュで木を表現
(N - 1).times do 
    a, b = gets.split(" ").map(&:to_i)
    tree[a] ||= [] #tree[a]がnilなら[]を代入して、すでに値をもっていたら何もしない
    tree[a] << b
    tree[b] ||= []
    tree[b] << a
end

score = Array.new(N + 1, 0)
Q.times do 
    p, x = gets.split(" ").map(&:to_i)
    score[p] += x #計算回数を減らすため取りあえず根の部分だけ得点を加える
end

q = [[1, score[1]]] #キュー
until 1.empty? do
    n, s = q.shift #dequeue
    next if tree[n].nil?
    score[n] = s
    tree[n].each do |c|
        q << [c, s + score[c]] #enqueue この部分で親の得点を加算している
    end
    tree[n] = nil #一度訪れた節は2度数えないようにnilにしている
end

puts score[1..-1].join(" ")