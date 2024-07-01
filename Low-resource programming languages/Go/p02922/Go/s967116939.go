package main

import (
    "fmt"
)

func main(){
    var a,b int
    fmt.Scanf("%d %d", &a,&b)
    if(b == 1) {
        fmt.Println("0")
        return;
    }else{
        ans := 1
        b -= a
        a--
        for b > 0 {
            b -= a
            ans++
        }
        fmt.Println(ans)
        return
    }
}