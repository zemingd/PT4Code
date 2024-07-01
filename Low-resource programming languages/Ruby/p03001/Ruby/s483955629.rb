arr = gets.strip.split(" ").map!(&:to_i)
w = arr[0]
h = arr[1]
x = arr[2]
y = arr[3]
result = 0.000000
ways = 1

if(w == 0 || h == 0) then
  printf("%.6f %d\n", result, ways)
  exit

result = ((w * h) / 2).to_f
if(x == w / 2 && y == h / 2) then
  ways = 1
elsif(x != w/2 || y != h/2 || y != (h/w) * x || y != h - (h/w) * x) then
  ways = 0
end
#長方形を通る2中線および2対角線上になければ複数ある。
printf("%.6f %d\n", result, ways)
