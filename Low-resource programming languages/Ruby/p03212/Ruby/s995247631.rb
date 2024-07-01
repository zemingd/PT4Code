n = gets.chomp.to_i
ans = 0

ary357 = ['3','5','7']

# 3...9桁を考える上で、iとaryに対して、
# aryがi個入った配列を返してくれるメソッドが欲しくなりました
def retarys(int, ary)
  retary = []
  int.times {retary << ary}
  retary
end

# ３桁と同じことを繰り返すだけです。*で配列を展開して渡せることを利用して、
# retarysという自家製メソッドでi個ary357を渡してます。
2.step(8){|i|
  # ary357.product(*retarys(i,ary357))　でi+1桁の3,5,7からなる整数を全列挙してます
  # count は trueの数を返してくれる便利な子です。
  ans += ary357.product(*retarys(i,ary357)).count {
    |aa| (aa.uniq.size == 3) && (aa.inject(:+).to_i <= n)
  }
}
puts ans