N, M = gets.split.map(&:to_i)
array = Array.new(M).map{Array.new(4,0)}
count = 0
M.times do
  pr, y = gets.split.map(&:to_i)
  array[count][0] = pr
  array[count][1] = y
  array[count][2] = count
  count += 1
end
array.sort! { |a,b| a[1] <=> b[1] }
pref = Array.new(M,1)
M.times do |i|
  a = array[i][0]
  pref[a] += 1
  array[i][3] = ( a.to_s.rjust(6,"0") + (pref[a]-1).to_s.rjust(6, "0") )
end
array.sort! { |a,b| a[2] <=> b[2] }
M.times do |i|
  puts array[i][3]
end
