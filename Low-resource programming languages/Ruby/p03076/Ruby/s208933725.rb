arr = 5.times.map { gets.chomp.to_i }

non_zero = arr.select { |e| e % 10 != 0 }
if non_zero.empty?
  arr.reduce(0) { |e, a| e + a }
  exit
end

nz = non_zero.sort_by { |e| e % 10 }.first
ans = 0
arr.each do |e|
  if e == nz
    ans += e
    nz = -1
    next
  end
  if e % 10 == 0
    ans += e
  else
    ans += ((e / 10) + 1) * 10
  end
end

puts ans