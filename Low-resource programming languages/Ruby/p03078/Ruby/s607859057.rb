x, y, z, k = gets.chomp.split.map(&:to_i)
xarr = gets.chomp.split.map(&:to_i).sort
yarr = gets.chomp.split.map(&:to_i).sort
zarr = gets.chomp.split.map(&:to_i).sort
arr = [[x-1, y-1, z-1, xarr[x-1] + yarr[y-1] + zarr[z-1]]]
list = []
until arr.length == k
    x2, y2, z2, w2 = arr.last
    x3 = [x2-1, y2, z2, xarr[x2-1] + yarr[y2] + zarr[z2]] if x2 > 0
    y3 = [x2, y2-1, z2, xarr[x2] + yarr[y2-1] + zarr[z2]] if y2 > 0
    z3 = [x2, y2, z2-1, xarr[x2] + yarr[y2] + zarr[z2-1]] if z2 > 0
    list << x3 unless list.include?(x3)
    list << y3 unless list.include?(y3)
    list << z3 unless list.include?(z3)
    list.sort_by!{|x4, y4, z4, w| w}
    arr << list.pop
end
arr.each{|item|  puts item[3]}