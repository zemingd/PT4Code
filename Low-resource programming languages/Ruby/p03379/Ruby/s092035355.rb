n = gets.to_i
counts = {}
u = []
data = gets.split(" ").map{|v|
  i = v.to_i
  counts[v] = counts[v] != nil ? counts[v] + 1 : 1
  u << i if counts[v] == 1
  i
}
uniqed = u.sort
i = (uniqed.length) / 2
mid = uniqed[i]
bm = uniqed[i - 1]
am = uniqed[i + 1]
odd = uniqed.length % 2 == 0

data.each{|d|
  changed = counts["#{d}"] == 1

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