x, y, z, k = gets.chomp.split.map(&:to_i)
xarr = gets.chomp.split.map(&:to_i).sort
yarr = gets.chomp.split.map(&:to_i).sort
zarr = gets.chomp.split.map(&:to_i).sort

arr = [[x-1, y-1, z-1]]
arr2 = []
arr3 = {[x-1, y-1, z-1] => true}
until arr.length == k
    x2, y2, z2 = arr.last
    x3 = y3 = z3 = nil

    x3 = [x2-1, y2, z2, xarr[x2-1] + yarr[y2] + zarr[z2]] if x2 > 0
    y3 = [x2, y2-1, z2, xarr[x2] + yarr[y2-1] + zarr[z2]] if y2 > 0
    z3 = [x2, y2, z2-1, xarr[x2] + yarr[y2] + zarr[z2-1]] if z2 > 0

    if !x3.nil? && !arr3[x3]
        arr2 << x3
        arr3[x3] = true
    end
    if !y3.nil? && !arr3[y3]
        arr2 << y3
        arr3[y3] = true
    end
    if !z3.nil? && !arr3[z3]
        arr2 << z3 
        arr3[z3] = true
    end
    arr2.sort_by!{|item| item[3]}
    max = arr2.pop
    arr << max[0..2]
end
arr.each{|ar| puts xarr[ar[0]] + yarr[ar[1]] + zarr[ar[2]]}