require 'complex'

n,d = gets.split.map(&:to_i)
li = []

n.times do 
  li << gets.split.map(&:to_i)
end

ans = 0

li.each_with_index do |v,i|
  li.each_with_index do |b,l|
    if i == l
      next
    end
    calc = 0
    d.times do |di|
      calc += (v[di]-b[di])**2
    end
    calc = Math.sqrt(calc).to_s
    if calc =~ /^[0-9]*\.0$/
      ans += 1
    end
  end
end

puts ans / 2
