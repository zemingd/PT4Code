N,k=gets.chomp.split(' ').map{|n| n.to_i}
H=gets.chomp.split(' ').map{|n| n.to_i}

H.sort!{|x,y| y<=>x}

kougeki = 0
H.each do |item|
  if k > 0 then
    k = k - 1
    next
  else
    kougeki = kougeki + item
  end
end

puts kougeki