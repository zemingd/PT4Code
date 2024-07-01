x,y,z,k = gets.chomp.split(" ")
as = gets.chomp!.split(" ")
bs = gets.chomp!.split(" ")
cs = gets.chomp!.split(" ")
cakes = [as.map!{|x| x.to_i}.sort.reverse!, bs.map!{|x| x.to_i}.sort.reverse!, cs.map!{|x| x.to_i}.sort.reverse!]
k = k.to_i

oishii = []

(cakes[0].length).times do |i|
  (cakes[1].length).times do |j|
    if i*j > k
      break
    end
    (cakes[2].length).times do |l|
      if i*j*l > k
        break
      end
      oishii.push(cakes[0][i]+cakes[1][j]+cakes[2][l])
    end
  end
end

k.times do |i|
 puts(oishii.sort.reverse[i])
end