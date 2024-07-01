N, M = gets.split.map(&:to_i)
AB = []
N.times do
  line = gets.split.map(&:to_i)
  AB << line
end

CD = []
ans = 0
p AB
(1..M).each do |n|
  delete_ind = []
  if AB
    AB.each_with_index do |ab, ind|
      if ab[0] == n
        CD.push(ab)
        delete_ind.push(ab)
      end
    end
  end
  delete_ind.each do |ab|
    AB.delete(ab)
  end
  CD.sort_by!{ |a, b| b }.reverse!

  if CD[0]
    ans += CD[0][1]
    CD.delete_at(0)
  end
end
  
p ans