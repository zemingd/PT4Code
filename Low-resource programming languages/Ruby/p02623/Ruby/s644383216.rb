n, m, k = gets.chomp.split(' ').map{|i| i.to_i }
b = [0]
a = gets.chomp.split(' ').map{|i| i.to_i }
gets.chomp.split(' ').each{|i|
  b.push(b.last + i.to_i)
}
b.shift

aminutesum = 0
blength = b.length
oldj = blength - 1
maxcount = 0

a.each_index{|i|
  aminutesum += a[i]
  (oldj + 1).times{|jj|
    j = oldj - jj
    bj = b[j]
    # p [oldj, i, j, aminutesum, bj, aminutesum + bj, k]
    if aminutesum + bj <= k
      oldj = j
      # p [maxcount, i, oldj, i + oldj + 2]
      maxcount = i + oldj + 2 if maxcount < i + oldj + 2
      break
    end
  }
}

puts maxcount
