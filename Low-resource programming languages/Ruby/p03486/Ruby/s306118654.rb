s = gets.chomp
t = gets.chomp

s.length.times do
  s = s.split("").rotate!(1).join
  t.length.times do
    t = t.split("").rotate!(1).join
    if s < t
      puts "Yes"
      exit
    end
  end
end

puts "No"