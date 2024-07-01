m=gets.split('').map(&:to_i)
10.times do |e|
  if m.count(e) > 1
    puts 'Bad'
    exit 0
  end
end
puts 'Good'
