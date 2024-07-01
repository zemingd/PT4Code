l, n = gets.split
li = l.to_i
ni = n.to_i
nums_hash = {}
ni.times {
  num_str = ""
  str = gets.chomp
  li.times {|i|
    num_str += str[i].ord.to_s(16)
  }
  nums_hash[str] = num_str.to_i(16)
}

res_str = ""
num_arrays = nums_hash.sort_by {|k, v| v}
num_arrays.each {|ary|
  res_str += ary[0]
}
puts res_str