K=gets.chomp.to_i
a,b=gets.chomp.split.map(&:to_i)

flg = 0
a.upto(b) { |n|
 if n%K == 0
  flg = 1
end
}

 if flg == 1
  puts "OK"
else
  puts "NG"
end 