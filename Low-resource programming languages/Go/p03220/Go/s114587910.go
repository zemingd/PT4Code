package main 

import ( 
        "fmt"
        "math"
)


func main () {
        var n, t, a, h, an, ta  int
        var ko float64
        lo :=1 
        fmt.Scan(&n, &t, &a)
        
        for i := 0 ; i < n ; i++{
                fmt.Scan(&h)
                x := t - h / 1000 * 6
                x = a - x
                ko = math.Abs(float64(x))
                x = int(ko)
                if an == 0 {
                        an = x
                        ta = lo
                        lo +=1
                }  else if x < an {
                        an = x
                        ta = lo 
                        lo +=1
                } else {
                        lo +=1
                }
        }
        fmt.Println(ta)
}
