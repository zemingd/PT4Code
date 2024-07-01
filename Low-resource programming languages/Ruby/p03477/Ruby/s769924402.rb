A, B, C, D = gets.split.map(&:to_i)
if A + B > C + D
    print 'Left'
elsif A + B == C + D
    print 'Balanced'
else
    print 'Right'
end