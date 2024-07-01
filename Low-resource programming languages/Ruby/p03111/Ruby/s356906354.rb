n,a,b,c = gets.split.map(&:to_i)
xs=n.times.map{gets.to_i}
$ans = 100000000000
def f(ps, xs, a, b, c)
  if ps.size == xs.size

    lens = [0] * 4
    num = 0
    ps.zip(xs).each{|p, x|
      lens[p] += x
      num += 1 if p < 3
    }
    3.times{|k|
      return if lens[k] == 0
    }
    cost = (lens[0] - a).abs + (lens[1] - b).abs + (lens[2] - c).abs + (num - 3) * 10
    $ans = [$ans, cost].min
  else
    4.times{|k|
      f(ps+[k], xs, a, b, c)
    }
  end
end
f([], xs, a, b, c)
p $ans
