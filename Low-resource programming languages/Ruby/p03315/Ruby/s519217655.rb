s=gets.chomp.split("").map { |e| e.to_s  }

n=s.length


var = 0

n.times do |i|

  if s[i] == "+"
    var +=1
  else
    var -=1
  end

end

puts var
