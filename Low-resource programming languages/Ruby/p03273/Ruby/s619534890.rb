cols = gets
h = cols[0].to_i
w = cols[0].to_i

a = []

h.times{|i|
  chars = gets.chomp!.split('')
  a << chars
}

def hline_all_white?(hline)
  hline.each{|c|
    if c != '.'
      return false
    end
  }
  return true
end

def find_all_white_hlines(a)
  a.each_with_index{|hline, i|
    if hline_all_white?(hline)
      return i
    end
  }
  return -1
end

def check_hlines(a)
  i = find_all_white_hlines(a)
  if i >= 0
    a.delete_at(i)
    return true
  end
  return false
end

def vline_all_white?(a, h, j)
  for i in 0...h
    if a[i][j] != '.'
      return false
    end
  end
  return true
end

def find_all_white_vlines(a)
  h = a.length
  if h == 0
    return -1
  end
  w = a[0].length
  for j in 0...w
    if vline_all_white?(a, h, j)
      return j
    end
  end
  return -1
end

def check_vlines(a)
  j = find_all_white_vlines(a)
  if j >= 0
    a.each{|hline|
      hline.delete_at(j)
    }
    return true
  end
  return false
end

while true
  vret = check_hlines(a)
  next if vret
  hret = check_vlines(a)
  next if hret
  break
end

a.each{|hline|
  puts hline.join
}
