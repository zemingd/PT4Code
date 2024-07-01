package main 

import (
        "fmt"
        "sort"
)

func main () {
        var n, k, h, an, x, y int
        f := []int{}
        fmt.Scan(&n,&k)
        for i := 0 ; i < n ; i ++ {
                fmt.Scan(&h)
                f = append (f, h)
        }
        sort.Sort(sort.IntSlice(f))
        for i := 0 ; i < n ; i++{
                y = i + k - 1
                if y  < n {
                         x = f[y] - f[i]
                        if an == 0{
                                an = x
                        }  else if an > x{
                                an = x
                        }
                } else {
                        break 
                }
        }
        fmt.Println(an)
}
