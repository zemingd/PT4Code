s = ""
W, H, x, y, r = gets.split.map(&:to_i)
if (r <= x and x <= W -r) and (r <= y and y <= H - r)
  s = "Yes"
else
  s = "No"
end
puts s