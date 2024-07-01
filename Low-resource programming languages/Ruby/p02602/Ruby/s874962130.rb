N, K = ARGF.gets.chomp.split.collect {|el| el.to_i}
AA = ARGF.gets.chomp.split.collect {|el| el.to_i}

i1 = 0
i2 = K

i2.upto(N - 1) do |ii|
  if AA[i1] < AA[ii]
    puts "Yes"
  else
    puts "No"
  end
  i1 += 1
end
