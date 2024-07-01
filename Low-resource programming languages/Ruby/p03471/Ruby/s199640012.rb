sum = gets.chomp.to_i
yen = gets.chomp.to_i 
sheets_all = []
0.upto(sum) do |x|
  0.upto(sum) do |y|
    0.upto(sum) do |z|
      sheets_all << [x,y,z]
    end
  end
end

ans = []
sheets_all.each do |sheets|
  if sheets[0]+sheets[1]+sheets[2] == sum
    if (sheets[0]*10000 + sheets[1]*5000 + sheets[2]*1000) == yen
      ans[0] = sheets[0]
      ans[1] = sheets[1]
      ans[2] = sheets[2]
      break
    end
  end
end

puts ans[0],ans[1],ans[2]