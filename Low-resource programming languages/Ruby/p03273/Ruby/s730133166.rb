h,w = gets.chomp.split(' ').map(&:to_i)
a = []
for i in 0..(h-1)
  a[i] = gets.chomp
end

a.map!{ |s| s = s.include?('#') ? s : nil }
for j in 0..(w-1)
  flag = true
  for i in 0..(h-1)
    unless a[i].nil?
      flag = false if a[i][j] == '#'
    end
  end
  if flag
    for i in 0..(h-1)
      a[i][j] = ' ' unless a[i].nil?
    end
  end
end
a.each do |a|
  puts a.delete(' ') unless a.nil?
end