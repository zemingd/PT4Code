def s()
  gets().chomp
end
def i()
  gets.to_i
end
def li()
  gets.split.map(&:to_i)
end
def ili()
  n = gets.to_i
  as = gets.split.map(&:to_i)
  [n, as]
end

n, c = li()
as = []
n.times{
  as << li()
}
res = {}
max_size = 100000
as.each{|a|
  if res[a[2]] == nil
    res[a[2]] = Array.new(max_size, 0)
  end
  res[a[2]][a[0]] += 1
  res[a[2]][a[1]] += -1
}

res.each{|k, v|
  1.upto(max_size-1){|i|
    res[k][i] += res[k][i-1]
  }
}
result = []
(max_size-1).times{|i|
  count = 0
  res.each{|k, v|
    if res[k][i] == 1 || res[k][i+1] == 1
      count += 1
    end
  }
  result << count
}

p result.max