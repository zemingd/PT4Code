A, B = gets.chomp.split.map(&:to_i)
S = gets.chomp
if /^\d{#{A}}-\d{#{B}}$/.match(S)
    print 'Yes'
else
    print 'No'
end