n = gets.split(" ").map{|x| x.to_i}
printf "%d %d %f\n", n[0] / n[1], n[0] % n[1], n[0] / n[1].to_f