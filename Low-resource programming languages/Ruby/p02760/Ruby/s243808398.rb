a = []
3.times do |i|
  ai = gets.rstrip.split(" ").map { |c| c.to_i }
  a.push(ai)
end

n = gets.rstrip.to_i
hole = Array.new(3, Array.new(3, false))
n.times do |temp|
  bi = gets.rstrip.to_i
  3.times do |i|
    3.times do |j|
      if a[i][j] == bi
        hole[i][j] = true
      end
    end
  end
end

if hole[0].all? \
    or hole[1].all? \
    or hole[2].all? \
    or 3.times.map{|i| hole[0][i]}.all? \
    or 3.times.map{|i| hole[1][i]}.all? \
    or 3.times.map{|i| hole[2][i]}.all? \
 	or 3.times.map{|i| hole[i][i]}.all? \
    or 3.times.map{|i| hole[i][2-i]}.all?
  puts "Yes"
else
  puts "No"
end
       