a,b,c,x = 4.times.map{gets.to_i}

ans = 0
0.upto(a) do |ai|
  0.upto(b) do |bi|
    0.upto(c) do |ci|
      ans += 1 if ai*500 + bi*100 + ci*50 == x
    end
  end
end

puts ans