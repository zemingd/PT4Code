s = gets.chomp
until s.empty?
  if s.end_with?("dream") || s.end_with?("erase")
    s.slice!(-5..-1)
  elsif s.end_with?("eraser")
    s.slice!(-6..-1)
  elsif s.end_with?("dreamer")
    s.slice!(-7..-1)
  else
    puts "NO"
    exit
  end
end
puts "YES"