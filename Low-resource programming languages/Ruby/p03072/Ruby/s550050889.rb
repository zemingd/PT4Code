N = gets.to_i
H = gets.split.map(&:to_i)

count = 1
highest = H[0]

H.each_cons(2) do |w,e|
  if w <= e && highest <= e
    count += 1
    highest = e
  end
end

puts count