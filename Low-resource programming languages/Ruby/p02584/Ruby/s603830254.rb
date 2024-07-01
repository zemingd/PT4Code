x,k,d=gets.split.map &:to_i
x=x.abs
t=x/d  # 最小の絶対値が変化しなくなるまでに必要な移動回数
m=x%d  # ↑の余りを考慮

res = if t>=k  # tがkに満たない(足りない)場合
        (x-k*d).abs
      elsif (k-t).even?  # 偶数の場合は変化しない
         m
      elsif (k-t).odd?  # 奇数の場合は左右どちらかの小さい方
        [(m-d).abs, (m+d).abs].min
      end
puts res
