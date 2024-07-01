N  = gets.to_i
AB = N.times.map{ gets.split.map(&:to_i) }

AB.sort!{ |a, b| a[1] <=> b[1] }

lapse = 0
AB.each do | a, b |
  lapse += a
  if lapse > b
    puts 'No'
    exit
  end
end
puts 'Yes'