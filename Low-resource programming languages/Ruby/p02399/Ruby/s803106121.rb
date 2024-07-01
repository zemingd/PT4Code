a = gets.split(" ").map {|s| s.to_i};
b = a[0] / a[1];
c = a[0] % a[1];
d = a[0].to_f / a[1].to_f;
puts b.to_s + " " + c.to_s + " " + d.to_s;