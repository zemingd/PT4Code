n, m = gets.split.map{|i| i.to_i}
town_roadcount = Hash.new()
m.times do |_|
    a, b = gets.split.map{|x| x.to_i}
    if town_roadcount.has_key?(a) then
        town_roadcount[a]+=1
    else
        town_roadcount[a]=1
    end
    if town_roadcount.has_key?(b) then
        town_roadcount[b]+=1
    else
        town_roadcount[b]=1
    end
end

# rubyのhashは順序を持つのかどうかよくわからんしキーだけとってソートする感じも考えたけど1~nまであるのは確実なのでそれで回すことにする
(1..n).each do |i|
    puts town_roadcount[i]
end