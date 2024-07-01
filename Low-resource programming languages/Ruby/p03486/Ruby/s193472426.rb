s=gets.chomp
t=gets.chomp
if s<t
  puts :Yes
  exit
end
s.each_char do |si|
  t.each_char do |ti|
    if si<ti
      puts :Yes
      exit
    end
  end
end
puts :No
