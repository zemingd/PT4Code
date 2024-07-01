N, M, C = gets.split.map(&:to_i)
bm = gets.split.map(&:to_i)
ans = 0

N.times {
  am = gets.split.map(&:to_i)
  ans += 1 if (am.zip(bm).map{ |e| e.inject(:*) }.lazy.sum + C) > 0
}

p ans