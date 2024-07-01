def isDivisor?(val, divNum)
  if val % divNum != 0 then
    return false
  end
  return true

end

a, b, c = gets().chomp.split.map(&:to_i)
con = 0

for i in a..b do
  if isDivisor?(c, i) then
    con += 1
  end
end

puts con
