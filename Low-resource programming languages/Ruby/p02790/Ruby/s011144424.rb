a,b = gets.split.map(&:to_i)
arr = ["",""]
    b.times{
        arr[0] <<a.to_s
    }
    a.times{
        arr[1] <<b.to_s
    }
arr.sort!
printf("%s\n",arr[0])
