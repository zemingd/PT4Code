a = gets.chomp.split("/").map(&:to_i);
T = a[0]*10000 + a[1]*100 + a[2]

if T <= 20190430 then
    print "Heisei\n"
else 
    print "TBD\n"
end
