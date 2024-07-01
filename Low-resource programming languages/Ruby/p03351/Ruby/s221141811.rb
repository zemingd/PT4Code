a,b,c,d = gets.chomp.split.map(&:to_i)
printf("%s\n",((a-c).abs <= d || (a-b).abs <= d && (b-c).abs <= d) ? "Yes" : "No")