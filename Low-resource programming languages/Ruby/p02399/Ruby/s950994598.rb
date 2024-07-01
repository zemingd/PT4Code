a = gets.split(" ").map! {|i| i.to_i}
print a[0] / a[1], " ", a[0] % a[1], " "
printf("%.5f\n", a[0].to_f / a[1])