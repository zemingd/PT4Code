n = gets.to_i
a = gets.split.map(&:to_i)
ar = []

a.each do |v|
  if v.even?
    ar << v
  end
end

ctr = 0
ar.each do |v|
  if (v % 3 == 0) | (v % 5 == 0)
    ctr +=1
    if ctr == ar.count
      puts "APPROVED"
    end
  else
    puts "DENIED"
  end
end
