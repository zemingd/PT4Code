i = gets.chomp
ary = i.split(/[^ACGT]/)
if ary == [] then
    print 0
else
print ary.sort_by {|array| array.size}.reverse[0].size
end