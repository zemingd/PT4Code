N, M = gets.split.map(&:to_i)
a = N.times.map { gets.split.map(&:to_i) }

foodsLove = Array.new(M)
allLoveCount = 0
M.times{|i| foodsLove[i]=0}

N.times { |people|
  a[people][0].times do |foodsnum|
    foodsLove[a[people][foodsnum]] +=1
  end
}

foodsLove.each do |f|
  if f==N
    allLoveCount+=1
  end
end

print allLoveCount