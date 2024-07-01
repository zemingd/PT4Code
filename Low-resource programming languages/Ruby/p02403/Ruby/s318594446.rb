


ar =[]


while true
  a, b = *STDIN.gets.split(" ").map(&:to_i)




  # h, w

  h = a; w = b


  ar << [h,w]



  break if a == 0 && b == 0
end


ar.each do |o|
  o[0].times.each do
    puts "#" * o[1]
  end

end



