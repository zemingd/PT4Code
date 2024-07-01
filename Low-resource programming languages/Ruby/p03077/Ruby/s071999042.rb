n = gets.to_i
cities = readlines.map { |num| {limit: num.to_i, current: 0} }
cities[0][:current] = n
cities << {limit: 0, current: 0}
cities.reverse!

time = 0
until cities[0][:current] == n
  (1..5).each do |i|
    # その都市に誰もいない場合には処理をスキップして次の都市へ
    next if cities[i][:current] == 0

    # 移動させてよい人数の算出
    if cities[i][:current] >= cities[i][:limit]
      move = cities[i][:limit]
    else
      move = cities[i][:current]
    end

    # 算出した数だけ人数を減らす
    cities[i][:current] = cities[i][:current] - move

    # 次の都市に人数を加算する
    cities[i-1][:current] = cities[i-1][:current] + move
  end
  time += 1 # 1分経過させる
end
puts time
