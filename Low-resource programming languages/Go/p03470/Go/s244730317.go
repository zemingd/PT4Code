package main 

import (
        "fmt"
)

func main () {
        var n, d, lo int
        a := []int{}
        an :=[]int{}
        fmt.Scan(&n)
        for i := 0 ; i < n ; i++ {
                fmt.Scan(&d)
                a = append (a, d)
        }
        m := n -1
        an = append(an, a[m])
        for k := 0 ; k < n ; k++ {
                lo = 0
                for i := 0 ; i < len(an)  ; i++ {
                        if a[k] == an[i]{
                                lo +=1
                        }
                }
                if lo == 0{
                        an = append(an, a[k])
                }
        }
        fmt.Println(len(an))

}
