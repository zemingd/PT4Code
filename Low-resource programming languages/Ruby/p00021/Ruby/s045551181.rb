#encoding:utf-8 No.0021 2014.10.3
n = gets.chomp.to_i
n.times do |i|
  ary = gets.split.map {|item|
    item = item.to_f
  }
  if (ary[0]-ary[2])/(ary[1]-ary[3]) == (ary[4]-ary[6])/(ary[5]-ary[7])
    puts "YES"
  else
    puts "NO"
  end
end