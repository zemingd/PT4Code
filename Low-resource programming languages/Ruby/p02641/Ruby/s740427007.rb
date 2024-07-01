lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end
a = lines[0]
b = lines[1]
if a[1] == 0
  puts a[0]
  exit
end

arr = (1..100).to_a - b
arrr = arr.map {|x| a[0] - x}
puts arrr
abs_arr = arrr.map(&:abs)
min_i = abs_arr.min
min_n = abs_arr.index(min_i)
puts arr[min_n]