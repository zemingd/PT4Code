n, k = gets.split.map(&:to_i)
vs   = gets.split.map(&:to_i)

# 全探索する.
# 1個取る -> 最大k-1個, マイナスで一番大きい数から返す
#   左から1取る
# 2個取る -> 最大k-2個, マイナスで一番大きい数から返す
#   左から2取る 
#   左から1取る, 右から1取る
#   右から2取る 
# 3個取る -> 最大k-3個, マイナスで一番大きい数から返す
#   左から3取る 
#   左から2取る, 右から1取る
#   左から1取る, 右から2取る
#   右から3取る 
# :
# :
# (n,k).min 個取る -> 最大...

# memo
#   配列の最初の要素を返す: shift
#   配列の末尾の要素を返す: pop

max = 0

1.upto([n, k].min) do | i | # i が取る総数
  # 左から取る数=l, 右から取る数=r を初期化.
  l, r = i, 0
  while l >= 0
    # queue, 取得boxの初期化
    queue, at_hand = vs.clone, []

    # 取得
    l.times{ at_hand << queue.shift }
    r.times{ at_hand << queue.pop }

    # 返却
    at_hand.sort!
    (k-i).times do
      break if at_hand.size == 0
      if at_hand.min < 0
        at_hand.shift
      else
        break
      end
    end

    # 最大値の更新
    sum = 0
    at_hand.each{ |num| sum+= num }
    max = sum if max < sum

    # 左右の数を変える
    l -= 1
    r += 1
  end
end

p max