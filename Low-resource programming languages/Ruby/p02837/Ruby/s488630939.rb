n = gets.chomp.to_i

ans = []

n.times do |i|
  ans_count = gets.chomp.to_i
  ans[i] = []
  ans_count.times do |j|
    x, y = gets.chomp.split.map(&:to_i)
    ans[i][j] = [x - 1, y == 1]
  end
end

[true, false].repeated_permutation(n) do |comb|
  catch :next_comb do
    n.times do |i|
      next unless comb[i]
      #i番目の人が正直なとき矛盾するかどうか
      ans[i].each do |an|
        #an[0]番目の人がan[1]だと言っている
        throw :next_comb if comb[an[0]] != an[1] #矛盾していたら終了
      end
    end
    puts comb.count {|c| c }
    exit
  end
end
