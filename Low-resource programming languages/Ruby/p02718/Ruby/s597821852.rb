n, m = gets.split().map(&:to_i)
a = gets.split().map(&:to_i)
vote = a.inject(&:+)
border = vote / (4.0*m)

a.sort.reverse.slice(0, m).each do |num|
  if num < border
    puts "No"
    exit
  end
end

puts "Yes"