N, M = STDIN.gets.chomp.split(' ').map(&:to_i)

cities = []
prefs = Array.new(N) { [] }

i = 0
STDIN.each_line do |line|
  pi, yi = line.chomp.split(' ').map(&:to_i)

  cities.push([i, pi, yi])
  prefs[pi-1].push(yi)
  # prefs.each {|pr| puts pr.join(',')}
  # puts '---'
end

prefs.each do |pref|
  pref.sort!
end

# prefs.each {|pr| puts pr.join(',')}

cities.each do |(i, pi, yi)|
  puts "#{pi.to_s.rjust(6, '0')}#{(prefs[pi-1].index(yi)+1).to_s.rjust(6, '0')}"
end
