N,C = gets.split.map(&:to_i)

cs = (1..C).map{ [] }
N.times{
  s,t,c = gets.split.map(&:to_i)
  cs[c-1] << [s, +1]
  cs[c-1] << [t, -1]
}

ts = []
cs.each{ |c| 
  c.sort!
  (0...c.size-1).reverse_each{ |i|
    if c[i][1] == -1 && c[i][0] == c[i+1][0] && c[i+1][1] == 1
      c[i,2] = []
    end
  }
  c.each{ |f,o|
    if o > 0
      ts << [f.to_f - 0.5, o]
    else
      ts << [f.to_f - 0.1, o]
    end
  }
}

ts.sort!

ans = 0
v = 0
ts.each{ |_,o|
  v += o
  #$stderr.puts v
  ans = [ans, v].max
}
puts ans
