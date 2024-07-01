input_lines = $stdin.read.split("\n")
s = input_lines[0].split('')
t = input_lines[1].split('')

s_hash = Hash.new(0)
s.each do |elm|
  s_hash[elm] += 1
end

t_hash = Hash.new(0)
t.each do |elm|
  t_hash[elm] += 1
end

if s_hash.values.sort == t_hash.values.sort
	puts 'Yes'
else
	puts 'No'
end