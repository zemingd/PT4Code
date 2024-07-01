# Your code here!
A, B = gets.split.map(&:to_i)
AB = A + B
Ab = A - B
ab = A  * B
arr = [AB,Ab,ab]
arr.sort!

puts(arr[2])

