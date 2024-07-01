N = gets.chomp.to_i
a = ['3','5','7']
ans = 0

#Nの桁数は9以下なので，3,4,...,9桁の整数について七五三数であるかを判定すればよい
3.step(9) {|i| #iは桁数
  ans += a.repeated_permutation(i).count {#3,5,7のいずれかを用いてi桁の整数を作り，条件を満たすものをカウントする
  #3,5,7を1回以上用いる＆N以下
  |b| b.uniq.size == 3 && b.join.to_i <= N
  }
}
puts ans
