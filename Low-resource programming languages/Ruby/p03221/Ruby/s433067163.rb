attrs = Array.new
while line = $stdin.gets
attrs << line.chomp.split
end
attrs.delete_at(0)
shilist = attrs.map {|item| item.map(&:to_i) }
shilist.length.times{|n| shilist[n].push(n+1)}
#shilist[n]=[県,年,市番号,県ごとの順番]
shilist.sort! do |a, b| 
  (a[0] <=> b[0]).nonzero? || (a[1] <=> b[1])
end
kennum = shilist[0][0]
t=1
kakou = shilist.each{|item|
if item[0] == kennum then
  item.push(t)
  t=t+1
else
  item.push(1)
  t = 1
end
kennum=item[0]
}
kakou.sort!{ |a, b| a[2] <=> b[2] }
kakou.each{|item|
print sprintf("%06d",item[0]),sprintf("%06d",item[3]),"\n"
}