hoge = gets
hello = hoge.split(//)

if hello[0] == hello[1] && hello[1] == hello[2]
  puts "Yes"
elsif hello[1] == hello[2] && hello[2] == hello[3]
  puts "Yes"
elsif hello[2] == hello[3] && hello[3] == hello[4]
  puts "Yes"
else
  puts "No"
end