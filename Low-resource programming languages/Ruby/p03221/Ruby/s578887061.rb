n, m = gets.chomp.split.map(&:to_i)
arr = []
pref = Array.new(n) {Array.new}

m.times do
  arr << gets.chomp.split.map(&:to_i)
end

n.times do |i|
  arr.each do |el|
    if el[0] == i+1
      pref[i] << el[1]
    end
  end
  pref[i].sort!
end

arr.each_with_index do |el, j|
  printf("%06d%06d\n", el[0], pref[el[0]-1].index(el[1])+1)
end
