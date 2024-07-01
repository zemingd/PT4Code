s = gets.chomp!.split("").map(&:to_i)
ans1 = 0
ans2 = 0

if s.length == 1 then
  puts 0
elsif s.length == 2 then
  if s[0] == s[1] then
    puts 1
  else
    puts 0
  end
else
  c = s.length % 2
  if c == 1 then
    if s.pop == 0 then
      ans1 += 1
    else
      ans2 += 1
    end
  end
  s.each_slice(2) do |l,m|
    if l == 0 then
      ans1 += 1
    else
      ans2 += 1
    end
    if m == 1 then
      ans1 += 1
    else
      ans2 += 1
    end
  end

  if ans1 >= ans2 then
    puts ans2
  else
    puts ans1
  end
end
