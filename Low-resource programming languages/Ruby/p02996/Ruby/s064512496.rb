n = gets.to_i
te = n.times.map{ gets.split.map(&:to_i) }.sort_by!{|t,e|e}

b = 0
f = true
te.each do |t,e|
  
  b += t
  if e < b
    puts "No"
    exit
  end
end

puts "Yes"