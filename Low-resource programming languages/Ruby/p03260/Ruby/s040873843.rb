A, B = gets.split.map(&:to_i)

1.upto(3) do |c|
  if (A * B * c).odd?
    puts 'Yes'
    exit
  end
end

puts 'No'