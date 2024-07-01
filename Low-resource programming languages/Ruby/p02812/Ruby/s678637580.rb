def check(s, indx)
  indx1 = s.index("ABC", indx)
  unless (indx1.nil?)
    $cnt += 1
    check(s, indx1 + 1)
  end
end

$cnt = 0
n = gets.to_i
s = gets.chomp

check(s, 0)
puts $cnt