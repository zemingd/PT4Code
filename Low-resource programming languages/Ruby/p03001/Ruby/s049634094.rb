arr = gets.strip.split(" ").map!(&:to_i)
w = arr[0]
h = arr[1]
x = arr[2]
y = arr[3]

result = (w * h) / 2.0
if(x == w*1.0 / 2.0 && y == h*1.0 / 2.0) then
  ways = 1
else
  ways = 0
end
printf("%f %d\n", result, ways)
