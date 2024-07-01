n = gets.to_i
a = n.times.map { gets.to_i }
arr = Array.new(n + 1, false)
arr[1] = true
res = -1
a.each_with_index{|aa, i|
  if arr[i + 1]
    arr[i + 1] = false
    arr[aa] = !arr[aa]
  end
  r = 0
  arr.each_with_index{|ar, i|
    if i != 2
      r += 1 if ar
    else
      r += 1 if !ar
    end
  }
  if r == 0
    res = i
    break
  end
}

p res

