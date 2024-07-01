n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
bc = m.times.map{gets.split.map(&:to_i)}

bc = bc.sort{|x, y| y[1] <=> x[1]} if m > 1

i = 0
bc.each do |b, c|
  if a[i] < c
    b.times do
      if a[i] < c
        a[i] = c
        i += 1
        break if i == n
      else
        break
      end
    end
  else
    break
  end
end

puts a.sum
