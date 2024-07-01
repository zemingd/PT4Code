nm = STDIN.gets.chomp.split(' ').map(&:to_i)

inputs = []

nm[1].times do
  inputs << STDIN.gets.chomp.split(' ').map(&:to_i)
end


range = [*1..nm[0]]
count = 0
inputs.each do |array|
  first = range.index(array[0]).nil? ? 0 : range.index(array[0])
  last = range.index(array[1]).nil? ? range.length : range.index(array[1])
  range = range.slice(first..last)
end

puts range.length