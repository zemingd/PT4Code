array = gets.chomp.split(" ")
H = array[0].to_i
W = array[1].to_i

gyou_array = []
next_array = []
retu_array = []
final_array = []

gyou_tobasu = []
retu_tobasu = []

H.times{|item|
  gyou_array << gets.chomp.split("")
}

gyou_array.each_with_index {|item, idx|
  gyou_tobasu << idx.to_i unless item.include?("#")
}

gyou_array.each_with_index{|item, idx|
  next if gyou_tobasu.include?(idx)
  next_array << item
}

retu_array = next_array.transpose
retu_array.each_with_index {|jtem, jdx|
  retu_tobasu << jdx.to_i unless jtem.include?("#")
}

retu_array.each_with_index{|jtem, jdx|
  next if retu_tobasu.include?(jdx)
  final_array << jtem
}

final_array.transpose.each_with_index{|ltem, ldx|
  ltem.each_with_index{|ltem, ldx|
    print(ltem)
  }
  puts("")
}