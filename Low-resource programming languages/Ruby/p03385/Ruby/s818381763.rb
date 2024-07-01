
hasA = false
hasB = false
hasC = false
gets.each_char do |c|
  #puts c
  if c == 'a'
    hasA = true
  elsif c == 'b'
    hasB = true
  elsif c == 'c'
    hasC = true
  end
end

if hasA && hasB && hasC
  puts "Yes"
else
  puts "No"
end
