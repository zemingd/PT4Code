l,n =  gets.split
nums_hash = {}
n.to_i.times {
  str = gets.chomp
  num_str = ""
  l.to_i.times {|i|
    num_str += str[i].ord.to_s(16)
  }
  nums_hash[str] = num_str.to_i(16)
}

dic_str = ""
num_arrays = nums_hash.sort_by {|_, v| v}
num_arrays.each {|ary|
  dic_str += ary[0]
}
puts dic_str