input = readlines()
meta = input.shift.chomp.to_i

list = {'AC' => 0, 'WA' => 0, 'TLE' => 0, 'RE' => 0}
input.each do |l|
  jdg = l.chomp
  list[jdg] += 1
end

['AC', 'WA', 'TLE', 'RE'].each do |key|
  puts "#{key} x #{list[key]}"
end
