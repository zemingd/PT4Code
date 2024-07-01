n, m, k = gets.chomp.split(' ').map{|i| i.to_i }
a = [0]
b = [0]
gets.chomp.split(' ').each{|i|
  a.push(a.last + i.to_i)
}
gets.chomp.split(' ').each{|i|
  b.push(b.last + i.to_i)
}
a.shift
b.shift

blength = b.length
oldj = blength - 1
maxcount = 0

n.times{|i|
  ai = a[i]
  break if ai > k
  (oldj + 1).times{|jj|
    j = oldj - jj
    bj = b[j]
    # p [oldj, i, j, ai, bj, ai + bj, k]
    if ai + bj <= k
      oldj = j
      # p [maxcount, i, oldj, i + oldj + 2]
      maxcount = i + oldj + 2 if maxcount < i + oldj + 2
      break
    end
  }
}

puts maxcount
