s = gets.chomp.split('')
o = []
s.each do |e|
  case e
  when 'B'
    o.delete_at(-1)
  else
    o.push e
  end
end
puts o.join
