W, H, x, y = gets.split.map(&:to_f)
print(W*H/2)
if W/2 == x && H/2 == y then
    puts(" 1")
else
    puts(" 0")
end