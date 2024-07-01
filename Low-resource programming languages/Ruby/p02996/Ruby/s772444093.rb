tasks = gets.to_i.times.map { gets.split.map(&:to_i) }
tasks.sort { |(a1, b1),(a2, b2)| b1 <=> b2 }.inject(0) do |s, (a, b)|
  t = s + a
  if t <= b
    t
  else
    puts 'No'
    exit
  end
end
puts 'Yes'