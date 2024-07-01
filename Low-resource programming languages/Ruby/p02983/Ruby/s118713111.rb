l,r=gets.chomp.split(" ").map{|s| s.to_i}
if r-l>3000
  puts 0
else
  ans=2019
  for i in l..r-1
    for j in i+1..r
      ans=[ans,(i*j)%2019].min
      break if ans==0
    end
  end
  puts ans
end
