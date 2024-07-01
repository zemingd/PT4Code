n, m = gets.chomp.split(' ').map(&:to_i)
py_arr = (0...m).map{|i|
  gets.chomp.split(' ').map(&:to_i)
}

hash = {}

py_arr.each{|p,y|
  if !hash[p] then
    hash[p] = []
  end
  hash[p].push(y)
}

hash2 = {}

hash.each{|k,arr|
  rank = arr.map{|v| arr.count{|a| a < v } + 1 }
  rank.each_with_index{|r, i|
    hash2[[k,arr[i]]] = format('%06d',k) + format('%06d',r)
  }
}

py_arr.each{|i|
  puts hash2[i]
}