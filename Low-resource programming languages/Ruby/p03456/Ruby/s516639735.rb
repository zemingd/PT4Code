a,b=gets.split
c=(a+b).to_i
(1..100).each {|i|
  if i*i==c
    puts "Yes" 
    exit
  end
}
puts "No"
