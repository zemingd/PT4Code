N = gets.to_i
A = []
N.times do
  A << gets.split.map(&:to_i)
end
A.select!{|x, y, h| h != 0} if A.size != 2

for cx in 0..100
  for cy in 0..100
    tmp = A.map{|x, y, h| h + (x - cx).abs + (y - cy).abs}.uniq
    if tmp.size == 1
      puts "#{cx} #{cy} #{tmp[0]}"
      break 
    end 
  end  
end 