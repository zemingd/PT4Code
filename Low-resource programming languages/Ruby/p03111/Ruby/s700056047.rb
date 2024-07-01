def calc_cost(list, num, str)
  a = str.split("").map{|i|list[i.to_i]}
#  p a
  c = (a.size-1)*10
  c += (a.inject(:+)-num).abs
  return c
end

l = gets.chomp.split.map(&:to_i)
n=l[0]
a = l[1]
b = l[2]
c = l[3]
list = []
max_cost = 1000000000
n.times do
  list.push(gets.chomp.to_i)
end
(4**n).times do |i|
  tri = i.to_s(4).rjust(n,"0")
  if(tri.include?("0") && tri.include?("1") && tri.include?("2"))
    trilist = ["","","",""]
    n.times do |j|
      trilist[tri[j].to_i]+=j.to_s
    end
    #p trilist
    cost = calc_cost(list, a, trilist[0]) + calc_cost(list, b, trilist[1]) + calc_cost(list, c, trilist[2])
  #  p cost
    if cost < max_cost
      max_cost = cost
    end
#    puts "-------"
#    p tri
#    p trilist
  end
end

puts max_cost
