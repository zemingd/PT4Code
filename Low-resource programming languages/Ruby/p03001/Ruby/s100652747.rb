arr = gets.strip.split(" ").map!(&:to_i)
w = arr[0]
h = arr[1]
x = arr[2]
y = arr[3]
result = 0.000000
ways = 1

result = ((w * h) / 2).to_f
if(x == w / 2 && y == h / 2) then
  ways = 1
else
  ways = 0
end
printf("%.6f %d\n", result, ways)