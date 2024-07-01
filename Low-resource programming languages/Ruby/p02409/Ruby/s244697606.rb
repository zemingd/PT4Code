num=STDIN.gets.to_i
bld=Array.new(4){Array.new(3){Array.new(10)}}

for ii in 0..3
for jj in 0..2
for kk in 0..9
        bld[ii][jj][kk]=0
end
end
end

for k in 0..num-1
    b,f,r,v=STDIN.gets.chomp.split.map{|v|v.to_i}
    bld[b-1][f-1][r-1]=v
end

f=1
bld.each do |flr|
flr.each do |room|
room.each do |man|
        print " ",man
end
print "\n"
end
if f<4 then
print "####################\n"
end
f=f+1
end