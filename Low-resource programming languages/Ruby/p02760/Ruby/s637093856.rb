a = 3.times.map{gets.split.map(&:to_i)}
n = gets.to_i
b = n.times.map{gets.to_i}
f = 3.times.map{[false]*3}

b.each{|x|
  3.times{|i|
    3.times{|j|
      if a[i][j]==x
        f[i][j] = true
      end
    }
  }
}

ans = false
2.times{
  3.times{|i|
    ans = true if f[i].all?
  }
  ans = true if 3.times.map{|i|f[i][i]}.all?
  f = f.transpose
}

puts ans ? "Yes" : "No"
