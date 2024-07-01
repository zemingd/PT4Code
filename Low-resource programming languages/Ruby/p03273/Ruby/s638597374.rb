tate, yoko = gets.chomp.split(' ').map(&:to_i)
grid = []
indexes = []
tate.times do
  line = gets.chomp.split('')
  if (line.include?('#'))
    indexes << line.size.times.select{ |i| line[i]=='#' }
    grid << line
  end
end
indexes = indexes.flatten.uniq.sort
grid.each do |line|
  indexes.each do |i|
    print line[i]
  end
  puts
end