line = gets
arr = line.split
arr.map!{|i| i.to_i}
printf("%d %d %.6f\n", arr[0] / arr[1],
       arr[0] % arr[1], arr[0].to_f / arr[1].to_f)