require 'scanf'

while line = gets do
    n = line.scan(/\w+/).size()
    line.scan(/\w+/).collect{|t| t.to_i}.sort().each_with_index{|t, i|
        print t
        if i + 1 < n
            print " "
        end
    }
    print "\n"
end