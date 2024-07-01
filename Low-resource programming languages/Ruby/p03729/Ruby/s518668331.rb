io = STDIN
a,b,c=io.gets.chomp.split
aa,bb,cc=a.split(//),b.split(//),c.split(//)
if aa[-1]==bb[0] && bb[-1]==cc[0]
 puts 'YES'
else
 puts 'NO'
end