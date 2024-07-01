# A=gets.to_i
# B=gets.split.map(&:to_i)
# C=N.times.map{gets.to_i}
# D=N.times.map{gets.split.map(&:to_i)}
# S=gets.chomp

H,W=gets.split.map(&:to_i)
gridsV=Array.new(H){Array.new(W)}
gridsH=Array.new(W){Array.new(H)}
field=H.times.map{gets.chomp}


H.times do |i|
  sum=0
  W.times do |j|
    if field[i][j]=="#"
      sum=0
    else
      sum+=1
    end
    gridsV[i][j]=sum
  end
  (W-1).times.reverse_each do |j|
    if field[i][j+1]!="#" && field[i][j]!="#"
      gridsV[i][j]=gridsV[i][j+1]
    end
  end
end
W.times do |j|
  sum=0
  H.times do |i|
    if field[i][j]=="#"
      sum=0
    else
      sum+=1
    end
    gridsH[j][i]=sum
  end
  (H-1).times.reverse_each do |i|
    if field[i+1][j]!="#" && field[i][j]!="#"
      gridsH[j][i]=gridsH[j][i+1]
    end
  end
end


max=0
H.times do |i|
  W.times do |j|
    max=[max,gridsV[i][j]+gridsH[j][i]-1].max
  end
end
puts max
