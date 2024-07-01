n = STDIN.gets.to_i
i = 1
while true do
  if i % 3 == 0
    print " " + i.to_s
  elsif i % 10 == 3
    print " " + i.to_s
  end

  i += 1
  if i > n
    break
  end
end
print "\n"