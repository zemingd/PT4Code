n = gets.chop
s = gets.split(" ").map(&:to_i)

ssort = s.sort

count = 0
if ssort == s
  puts "YES"
else
  ssort.each_with_index do |i,index|
    if i != s[index]
      count += 1
    end
  end

  if count != 2
    puts "NO"
  else
    puts "YES"
  end
end

