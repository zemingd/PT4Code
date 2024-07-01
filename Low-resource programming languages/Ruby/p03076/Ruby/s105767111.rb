# N = gets.to_i
# A = gets.split(" ").map(&:to_i)
# S = gets.chomp

a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

def up(x)
  (x + 9) / 10 * 10
end

n = 0
arr = [a, b, c, d, e]
# arr = [1,2,3,4,5,6,7,8,9,0]
arr = arr.sort_by { |x| - ((x -1) % 10) }
# p arr

n += up(arr[0])
n += up(arr[1])
n += up(arr[2])
n += up(arr[3])
n += arr[4]

puts n
