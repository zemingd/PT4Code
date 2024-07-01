li,ri=gets.chomp.split(" ").map(&:to_i)
l= li%2019
r= ri%2019
if l > r
  puts 0
elsif l==r or l == 0 or r == 0
  puts 0
else
  data = (l..r).to_a.combination(2).map do |ij|
    i=ij[0]     
    j=ij[1]
    i*j % 2019
  end
  puts data.min
end