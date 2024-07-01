op1, op2, op3 = gets.split.map(&:to_i)
if op1 < op2 && op2 < op3
    print "Yes\n"
else
    print "No\n"
end
    