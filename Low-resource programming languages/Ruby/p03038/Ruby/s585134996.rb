n,m = gets.split.map(&:to_i)
ar = gets.split.map(&:to_i).sort
sets = []
m.times do
  sets << gets.split.map(&:to_i)
end

count = 0
sets.sort_by!{|a,b| -b}

sets.each do |a,b|
  break if count > n
  a.times do
    if ar[0] < b
      ar.shift
      ar << b
      count += 1
    else
      break
    end
  end
end

puts ar.inject(&:+)