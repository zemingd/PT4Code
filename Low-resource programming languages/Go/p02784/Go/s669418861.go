package main

import (
    "fmt"
)

func main(){
    var H, N int
    fmt.Scan(&H, &N)

    A := make([]int, N)

    for i:=0; i<N; i++{
        fmt.Scan(&A[i])
    }

    sort.Sort(sort.Reverse(sort.IntSlice(A)))

    for i:=0; i<N; i++{
        H -= A[i]
        if H<=0{
            break
        }
    }

    if H<=0{
        fmt.Println("Yes")
    }else{
        fmt.Println("No")
    }
    
    
}
