s=[gets.chop,""]
$<.map{|e|i,f,c=e.split
c ?s[-f.hex]<<c:s.reverse!}
$><<s[1].reverse+s[0]