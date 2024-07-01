n = gets.chomp.to_i
h_arr = gets.chomp.split(" ").map{|i|i = i.to_i}
#pp n
#pp h_arr

#puts "alksdjf;lakjsf"
max=0
count=0

h_arr.each{|i|
  if(max<=i) then 
    count +=1
    max=i
  end
}

puts count




