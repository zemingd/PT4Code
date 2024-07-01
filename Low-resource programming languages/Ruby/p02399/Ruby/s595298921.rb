a,b=gets.split.map(&:to_i)
print sprintf("%d %d %.6f\n",a/b,a%b,a.to_f/b.to_f)