n = gets.chomp.to_i
s = []
if n > 0 then
  n.times do
    s.push(gets.chomp.split('').sort.join())
  end
  s.sort!
  ans = 0
  i = 1
  s.each do |item|
    (i..(s.length-1)).each do |ii|
      if item == s[ii]
        ans += 1
      else
        break;
      end
    end
    i += 1
  end
  puts "#{ans}"
end
  