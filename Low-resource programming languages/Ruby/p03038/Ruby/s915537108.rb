n,m = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)

m.times do 
  b,c = gets.split(" ").map(&:to_i)
  b.times do |x|
    i = a.index(a.min)
    if a[i] < c
      a[i] = c 
    else
      break
    end
  end
end

puts a.inject(:+)

