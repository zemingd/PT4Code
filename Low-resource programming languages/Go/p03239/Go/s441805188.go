package main 

import (
        "fmt"
)

func main () {
        var a, b, c, d  int
        z := 0
        
        fmt.Scan(&a, &b)

        for i :=0 ; i < a ; i++{
                fmt.Scan(&c, &d)
                if  d <= b {
                        if z == 0 {
                                z = c
                        } else if c  < z   {
                                z = c
                        }
                }
        }

        if z == 0{
                fmt.Println("TLE")
        } else if z != 0{
                fmt.Println(z)
        }
}
