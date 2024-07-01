gets
T, A = gets.split(" ").map{|d|d.to_i}
H = gets.split(" ").map{|d|d.to_i}

temps = []
min_t = (0..H.size-1).map{|n|
	temps[n] = (A - (T - H[n] * 0.006)).abs
}.min
ret = 0
(0..temps.size-1).map{|n|
  if min_t == temps[n]
    ret = n+1
  end
}
puts ret

