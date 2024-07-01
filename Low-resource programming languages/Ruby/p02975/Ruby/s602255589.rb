gets;
a=gets.split().map(&:to_i).group_by(&:itself).to_a

if a.size == 3 && a.map{|k,v|k}.reduce(:^) == 0 && a[0][1].size == a[1][1].size && a[0][1].size == a[2][1].size
    print 'Yes'
elsif  a.size == 1 && a.map{|k,v|k}.reduce(:^) == 0
    print 'Yes'
else
    print 'No'
end
