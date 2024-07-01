map = []
4.times do
    a = []
    3.times do
        b = []
        10.times do
            b.push(0)
        end
        a.push(b)
    end
    map.push(a)
end

n = gets.to_i
n.times do
    b, f, r, v = gets.split.map(&:to_i)
    map[b-1][f-1][r-1] += v
end

map.each_with_index do |b, bi|
  if bi != 0
    puts "####################"
  end
  b.each_with_index do |f, fi|
    f.each_with_index do |r, ri|
      print " #{r}"
    end
    puts
  end
end
