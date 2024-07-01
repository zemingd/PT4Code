def monthable(str)
    num = str.to_i
    num >= 1 && num <= 12 ? 'y' : 'n'
end

s = gets.chomp
head = s[0,2]
tail = s[2,2]

puts({
    'yy' => 'AMBIGUOUS',
    'yn' => 'MMYY',
    'ny' => 'YYMM',
    'nn' => 'NA',
}[monthable(head) + monthable(tail)])
