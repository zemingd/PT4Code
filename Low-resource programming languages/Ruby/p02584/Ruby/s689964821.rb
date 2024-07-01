x,k,d = gets.chomp.split(' ').map(&:to_i)
x = x.abs

# 場合分け
#if (x >= d)
  hoge = x / d
  if (hoge >= k)
    puts x - k*d
    exit
  else
    x -= d * hoge
    k -= hoge
    if (k.even?)
      puts x
      exit
    else
      puts x + d
      exit
    end
  end
#end