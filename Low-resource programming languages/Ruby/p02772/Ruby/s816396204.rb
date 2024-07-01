n = gets.to_i
as = gets.split.map(&:to_i)

as.each do |a|
  if a % 2 == 0
    if a % 3 == 0 || a % 5 == 0
      # ok
    else
      puts 'DENIED'
      exit
    end
  end
end

puts 'APPROVED'
