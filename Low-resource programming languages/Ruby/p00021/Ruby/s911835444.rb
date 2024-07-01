#encoding:utf-8 No.0021 2014.10.3
n = gets.chomp.to_i
ary = Array.new(n)
while gets
  ary.push $_.chomp.split.map{|item|
    item = item.to_f
  }
end

n.times do |i|
  if (ary[i][1]-ary[i][3])/(ary[i][0]-ary[i][2]) == (ary[i][5]-ary[i][7])/(ary[i][4]-ary[i][6])
    puts "YES"
  else
    puts "NO"
  end
end