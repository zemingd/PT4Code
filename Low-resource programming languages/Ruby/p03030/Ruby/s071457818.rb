inputs = []
while input = $stdin.gets do
  inputs << input.chomp.split(" ")
end

n = inputs.shift
citys = []

inputs.each.with_index(1) do |city, i|
  city << i
  citys << city
end

citys_name_sort = citys.sort

super_citys = []
names = []

citys_name_sort.each do |name|
  names << name[0]
end

names.uniq.each do |name|
  check_names = []
  citys_name_sort.each do |city_n|
    if name == city_n[0]
      check_names << city_n
    end
  end
  super_citys << check_names.sort{ |a, b| b[1].to_i <=> a[1].to_i }
end

super_citys.each do |a0|
  a0.each do |a1|
    p a1[2]
  end
end