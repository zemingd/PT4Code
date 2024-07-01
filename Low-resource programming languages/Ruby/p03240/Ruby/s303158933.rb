n = gets.to_i
x,y,h = n.times.map{gets.split.map(&:to_i)}.select{|(x,y,h)| h>0}.transpose
n = x.size

101.times{|i|
  101.times{|j|
    w = n.times.map{|k| h[k]+((x[k]-i).abs + (y[k]-j).abs)}
    if w.uniq.size == 1
      puts [i,j,w[0]]*" "
    end
  }
}
