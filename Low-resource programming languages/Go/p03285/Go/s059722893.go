package main 

import (
        "fmt"
)


func main (){
        var a, b, d, e ,f   int
        fmt.Scan(&a)
        if  a % 7 == 0{
                fmt.Println("YES")
        } else if a % 4 == 0 {
                fmt.Println("YES")
        } else if a % 7 != 0 && a % 3 != 0 {
                 a = a / 7
                 b = a
                 for i := 0 ; i < a ; i++{
                         d += 1
                         e = 7 * b
                         f = 3 * d
                         if a % e / f ==0 {
                                 fmt.Println("YES")
                         }
                         a -=1

                 }
         } else {
                 fmt.Println("NO")
         }
 }
