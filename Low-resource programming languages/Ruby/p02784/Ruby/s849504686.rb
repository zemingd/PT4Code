imput = gets.split(' ').map(&:to_i)
h = imput[0]
n = imput[0]
a = gets.split(' ').map(&:to_i)

if a.inject(:+) >= h then
    print("Yes")
else
    print("No")
end