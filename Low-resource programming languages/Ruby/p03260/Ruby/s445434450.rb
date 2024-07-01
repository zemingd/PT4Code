a, b = gets.split.map(&:to_i)

(1..3).each do |c|
  if (a * b * c).odd?
    puts 'Yes'
    exit
  end
end
puts 'No'