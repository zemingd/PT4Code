n = gets.to_i
te = n.times.map{ gets.split.map(&:to_i) }.sort_by!{|x|x[1]}

b = 0
f = true
te.each do |t,e|
    
  if e < b + t
    puts "No"
    exit
  else
    b = b + t
  end
end

puts "Yes"