n = gets.chomp.to_i

claim = Array.new(n){ Array.new(n, 0) }
n.times do |i|
  a = gets.chomp.to_i
  a.times do
    x, y = gets.chomp.split.map(&:to_i)
    claim[i][x-1] = 2*y - 1
  end
end

max = 0
[-1,1].repeated_permutation(n) do |arr|
  possible = true
  honest = arr.count(1)
  next if max >= honest
  list = arr
  n.times do |i|
    next if arr[i] == -1
    if arr.zip(claim[i]).flat_map{|p,q| p*q}.include?(-1)
      possible = false
      break
    end
  end
  max = honest if possible
end

puts(max)