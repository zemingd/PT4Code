N, M = gets.split.map &:to_i
AB = $<.map{|s| s.split.map &:to_i }
cusum = [0] * (N*3+10)
AB.each{|a, b|
  cusum[3*a+1] += 1
  cusum[3*b-1] -= 1
}

sum = 0
cusum.map!{|n|
  sum += n
}

ans = 0
dir = -1
cusum.each_cons(2){|a, b|
  new_dir = a <=> b
  next if new_dir == 0
  ans += 1 if new_dir == 1 && dir == -1
  dir = new_dir
}
p ans
