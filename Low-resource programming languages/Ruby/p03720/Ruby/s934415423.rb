n,m  = gets.chomp.split(' ').map(&:to_i)
k = []
m.times do
  k.push(gets.chomp.split(' ').map(&:to_i))
end

kekka = Array.new(n,0)

n.times do |i|
  i+1
  k.each{|kk|
    if kk.include?(i+1)
      kekka[i]+=1
    end
  }
end

kekka.each do |kk|
  puts kk
end