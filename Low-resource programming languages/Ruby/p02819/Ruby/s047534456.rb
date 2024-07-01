n = STDIN.gets.chomp.to_i

prime = [2]
# ルート 100000まででOK
max =  Math.sqrt(100000).round
[*(2..100003)].each do |x|
  p_flg = true
  prime.each do |y|
    if x % y == 0
      p_flg = false
    end
    if y >= max
      break
    end
  end
  if p_flg
    if x >= n
      puts x
      break
    end
    prime.append(x)
  end
end
