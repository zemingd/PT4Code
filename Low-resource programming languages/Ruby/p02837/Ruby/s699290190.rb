N = gets.to_i
men = N.times.map{
  a = gets.to_i
  a.times.map{
    x, y = gets.split.map &:to_i
    [x-1, y]
  }
}
# p men

ans = 0
(2**N).times{|bits|
  ok = [0] * N
  N.times{|i|
    next if bits[i] == 0
    ok[i] = 1
    men[i].each{|x, y|
      ok[x] = 1 if y == 1
    }
  }
  if N.times.all?{|i|
    ok[i] == 0 || men[i].all?{|x, y|
      ok[x] == y
    }
  }
    ans = [ans, bits.to_s(2).count(?1)].max
  end
}
p ans