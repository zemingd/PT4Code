n = gets.to_i
a = n.times.map { gets.to_i }
arr = Array.new(n + 1, false)
arr[1] = true
res = -1
hist = []
a.each_with_index{|aa, i|
  break if hist.include?(i + 1)
  if arr[i + 1]
    arr[i + 1] = false
    arr[aa] = !arr[aa]
    hist << i + 1
  end
  if !(arr[0...2] + arr[3..-1]).any? & a[2]
    res = i
    break
  end
}

p res

