N = gets.to_i
H = gets.chomp.split(" ")
H.map!{|x| x.to_i}

max_count = 0  #最大数カウント

N.times do |i|
  break if max_count > N / 2 #半分より大きかったら終了
  break if max_count > N - i #その時点の最大移動数を超えたら終了

  count = 0 #移動回数カウント
  now = i  #現在地
  while now < H.length-1
    if H[now] >= H[now+1]
      count += 1
      now += 1
    else
      break
    end
  end
  max_count = count if max_count < count
  i += 1
end

p max_count
