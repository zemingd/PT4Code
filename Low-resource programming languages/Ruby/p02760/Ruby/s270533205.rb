arr = []
arr << gets.chop.split.map{ |n| [n.to_i, 0] }
arr << gets.chop.split.map{ |n| [n.to_i, 0] }
arr << gets.chop.split.map{ |n| [n.to_i, 0] }
nn = gets.chop.to_i
i = 0
while i < nn
    n = gets.chop.to_i
    i += 1
    col = nil
    row = arr.index{ |ar| col = ar.index([n, 0]) }
    next if col == nil
    arr[col][row][1] = 1
end
if (arr[0][0][1] == 1 && arr[1][0][1] == 1 && arr[2][0][1] == 1) ||
    (arr[1][0][1] == 1 && arr[1][1][1] == 1 && arr[1][2][1] == 1) ||
    (arr[2][0][1] == 1 && arr[2][1][1] == 1 && arr[2][2][1] == 1) ||
    (arr[0][1][1] == 1 && arr[0][1][1] == 1 && arr[0][2][1] == 1) ||
    (arr[0][1][1] == 1 && arr[1][1][1] == 1 && arr[2][1][1] == 1) ||
    (arr[0][2][1] == 1 && arr[1][2][1] == 1 && arr[2][2][1] == 1) ||
    (arr[0][0][1] == 1 && arr[1][1][1] == 1 && arr[2][2][1] == 1) ||
    (arr[0][2][1] == 1 && arr[1][1][1] == 1 && arr[2][0][1] == 1) then
    puts "Yes"
else
    puts "No"
end
