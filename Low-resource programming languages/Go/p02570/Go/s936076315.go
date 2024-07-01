
package main

import "fmt"

func main(){
    var d, t, s float64

    fmt.Scanf("%f %f %f", &d, &t, &s)

    //fmt.Printf("%f %f %f\n", d,t,s)

    if t >= d * (1.0/s) {
        fmt.Printf("Yes\n")
    } else {
        fmt.Printf("No\n")
    }
}
