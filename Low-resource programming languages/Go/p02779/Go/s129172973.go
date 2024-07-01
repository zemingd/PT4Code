package main

import (
    "fmt"
)

func main(){
    var N int
    fmt.Scan(&N)

    A := make([]int, N)

    for i:=0; i<N; i++{
        fmt.Scan(&A[i])
    }

    var count int

    for i:=0; i<N; i++{
        for j:=i+1; j<N; j++{
            if A[i]!=A[j]{
                continue
            }else{
                goto LABEL
            }
        }
        count++
    }
LABEL:
    
    if count==N {
        fmt.Println("Yes")
    }else{
        fmt.Println("No")
    }
}
