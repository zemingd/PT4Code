goodlist = []
10.times do |n|
  str = /#{n}#{n}#{n}/
  goodlist.push(str)
end
check = true
s = gets.chomp
goodlist.each do |str|
  if(s =~ str)
    print "Yes\n"
    check = false
    break
  end
end
print "No\n" if check