m=gets.chomp
10.times do |e|
  if m.index(e.to_s + e.to_s)
    puts 'Bad'
    exit 0
  end
end
puts 'Good'
