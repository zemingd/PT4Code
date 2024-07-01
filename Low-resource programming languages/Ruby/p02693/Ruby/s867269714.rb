k=gets.to_i
a,b=gets.split.map(&:to_i)
i=0
a.upto(b){|n|
  if n%k==0
    puts "OK"
    i=1
    break
  end
  }

puts i==0? "NG" : ""
