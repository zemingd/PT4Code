def tst(n,m,ls)
  ys={}
  lines=[]
  for i in 0..ls.length-1
    p,y=ls[i].chomp.split(" ").map(&:to_i)
    lines<<{i: i, y: y, p: p.to_s}
    ys[p] ||= []
    ys[p] << y
  end
  ys.each_pair{|_,v|v.sort!}
  lines.each do |x|
    yv=ys[x[:p].to_i].index {|yy| x[:y]==yy }.next.to_s
    puts "#{x[:p].rjust(10-x[:p].length, "0")}#{yv.rjust(10-yv.length, "0")}"
  end
end

n,m=gets.chomp.split(" ").map(&:to_i)
ls=[]
while l=gets
  ls<<l unless l.chomp == ""
end
tst(n,m,ls)