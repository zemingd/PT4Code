b = []
(a = gets.chomp.to_i).times do
  b.push(gets.chomp.to_s)
end
unless b.size != b.uniq.size
  for inc in 0...a-1
    unless b[inc].slice(-1) == b[inc+1].slice(0)
      puts "No"
      exit
    end
  end
else
  puts "No"
  exit
end
puts "Yes"