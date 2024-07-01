n = gets.chomp.to_i
abs = []
n.times{ abs << gets.split.map(&:to_i) }

abs.sort!{|a, b| a[1] <=> b[1] }
t = 0
e = false
abs.each do |ab|
  t += ab[0]
  if t > ab[1]
    e = true
    break
  end
end

puts e ? 'No' : 'Yes'
