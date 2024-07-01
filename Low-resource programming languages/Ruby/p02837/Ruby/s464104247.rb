n = gets.chomp.to_i

ll = []

n.times do
  a = gets.chomp.to_i
  row = []
  a.times do
    row << gets.chomp.split.map(&:to_i)
  end
  ll << row
end

ans = 0

[0, 1].repeated_permutation(n) do |bits|
  tmp_ans = 0
  break_flag = 0
  n.times do |i|
    # 不親切な人の場合はスキップ
    next if bits[i] == 0

    # 証言とbitを確認する

    # 正直者な場合 証言を確認する
    ll[i].each do |syougen|
      # p "#{bits}のとき"
      # p syougen
      if bits[syougen[0] -1 ] != syougen[1]
        break_flag = 1
      end
    end


  end

  ans = [ans, bits.inject(:+)].max if break_flag == 0
end

puts ans