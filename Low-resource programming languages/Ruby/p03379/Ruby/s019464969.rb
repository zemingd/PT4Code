n = gets.to_i
data = gets.split(" ").map{|v| v.to_i }
sorted = data.sort
uniqed = sorted.uniq
i = (uniqed.length) / 2
mid = uniqed[i]
bm = uniqed[i - 1]
am = uniqed[i + 1]
odd = uniqed.length % 2 == 0

data.each{|d|
  found = sorted.index(d)
  changed = sorted[found + 1] != d

  if !changed
    puts mid
    next
  end

  if odd
    if d >= mid
      puts bm
    else
      puts mid
    end
  else
    if d <= mid
      puts am
    else
      puts mid
    end
  end

}