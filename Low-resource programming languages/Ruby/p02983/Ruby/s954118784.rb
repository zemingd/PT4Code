l, r = gets.split.map(&:to_i)
i_list = Array.new
z_list = Array.new
for i in l..r do
  i_list.push(i)
end
#print(i_list, "\n")

for i in l..r-1
  for j in l+1..r
    z = ((i%2019)*(j%2019))%2019
  end
end

p z