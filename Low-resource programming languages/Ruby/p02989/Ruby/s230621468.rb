gets
arr = gets.split.map(&:to_i).sort
p arr[arr.count / 2] - arr[arr.count / 2 - 1]