n, l = gets.split
ni = n.to_i
li = l.to_i
nums_array = []
ni.times {
  str = gets.chomp
  num_str = ""
  li.times {|i|
    num_str += str[i].ord.to_s(16)
  }
  nums_array.push(num_str.to_i(16))
}

res_str = ""
nums_array.sort!
nums_array.each {|val|
  num_str = val.to_s(16)
  0.step(num_str.length, 2) {|i|
    res_str += num_str[i, 2].to_i(16).chr
  }
}
puts res_str