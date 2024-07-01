package main

import "fmt"
//import "sort"
func main() {
    
    const n = 1              
    a := make([]int, n)
    for i := 0; i < n; i++ {
      fmt.Scan(&a[i])
    }
    // sort.Ints(a)
    fmt.Println(a[0] * (a[0] + 1) / 2)
    //fmt.Println( (a[0] + a[1]) * a[2] / float64(2) )
    
}