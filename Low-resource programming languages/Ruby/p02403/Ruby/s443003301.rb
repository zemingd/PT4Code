lines = []

while line = gets
  lines << line.chomp.split(' ').map(&:to_i)
end

lines.each do |line|
  next if line[0] == 0 && line[1] == 0
  line[0].times do
    hash = []
    line[1].times { hash << "#" }
    puts hash.join('')
  end
  puts "\n"
end
