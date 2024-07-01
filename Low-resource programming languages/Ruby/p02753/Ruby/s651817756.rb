attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

S = attrs[0][0]
if S == 'AAA' || S == 'BBB' then
  puts 'No'
else
  puts 'Yes'
end