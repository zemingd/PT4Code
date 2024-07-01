a = gets.chomp.split('')
r = []
 
a.each do |e|
  if e == 'B'
        r.pop
        next
    end
      r.push(e)
end
puts r.join