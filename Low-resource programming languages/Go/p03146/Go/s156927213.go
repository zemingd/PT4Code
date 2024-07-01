package main

import "fmt"

func main(){
    var s int
    fmt.Scan(&s)
   
    fmt.Printf("%d\n", solve(s))
}


func solve(s int) int {
    max := 1000001
    a := make([]int, max)
    
    a[1] = s
    for i:=2; i<max; i++ {
        a[i] = fn(a[i-1])
        for j:=1; j<i; j++{
            if a[i] == a[j] {
                return i
            }
        }
    }
    return -1
}

func fn(n int) int{
    if n %2 == 0 {
        return n/2
    }else{
        return 3*n + 1
    }
}
