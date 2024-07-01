l, r = gets.split.map(&:to_i)
i_list = Array.new
z_list = Array.new
for i in l..r do
  i_list.push(i)
end
#print(i_list, "\n")

i_list.each do |e|
  z = e % 2019
  z_list.push(z)
  if z == 0
    break
  end
end

#z_list.sort_by{ |x| x.to_i }
#p z_list
answer = (z_list[0]%2019)*(z_list[1]%2019)

p answer%2019