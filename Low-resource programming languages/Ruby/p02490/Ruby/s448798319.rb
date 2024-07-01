a = $stdin.read.split(/\n/)
a.each do |arr|
  b = arr.split(/\s/)
  c = b[0].to_i
  d = b[1].to_i
  if c == d
  break
  end
  if c > d
    puts "#{d} #{c}"
  elsif
    puts "#{c} #{d}"
  end
end