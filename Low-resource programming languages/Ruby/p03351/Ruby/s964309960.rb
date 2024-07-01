a,b,c,d=gets.chomp.split(" ").map(&:to_i);
if ((a-b).abs() <= d && (c-b).abs() <= d) || (a-c).abs() <= d then
print("Yes\n");
else
print("No\n");
end