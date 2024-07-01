package main 

import ( 
        "fmt"
)

func main () {
        var a, b, k, x int
        fmt.Scan(&a,&b,&k)
        y := b -a
        for i := a ; i <= b ; i++ {
                x += 1
                if b - a - k * 2 <= 0{
                        fmt.Println(i)
                } else if x <= k {
                        fmt.Println(i)
                }  else if x > y - k + 1 {
                        fmt.Println(i)
                }
        }
} 