A,B,C = gets.chop.split(" ").map(&:to_i)

if (A*C) < B
print C
else
    print "#{B/A}"
end