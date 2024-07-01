i = gets.to_i
town =[]
(0..i-1).each do |n|
   s,t =  gets.chomp.split(" ")
    t = t.to_i
   town << [s,-t,n+1]
end
town.sort!
town.each do |a,b,c|
    puts c
end