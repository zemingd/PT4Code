def main
  n, m = gets.split.map(&:to_i)

  cities = Array.new(m)
  m.times do |i|
    cities[i] = gets.split.map(&:to_i) << i
  end
  # puts cities

  cities.sort!
  # puts cities

  # 県内での順位を追加
  last_p = 0
  c_idx = 0
  cities.each do |city|
    if last_p != city[0]
      c_idx = 0
      last_p = city[0]
    end
    # puts "%06d%06d" % [p, c_idx]

    c_idx += 1
    city << c_idx
  end
  # puts cities

  # 入力順に昇順ソート
  cities.sort_by! { |city| city[2] }
  # puts cities

  cities.each do |(p, _, _, c_idx)|
    puts "%06d%06d" % [p, c_idx]
  end

end

if __FILE__ == $0
  main
end
