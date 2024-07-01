package main

import (
    "fmt"
)

func main(){
    // Your code here!
    
    var a ,b int
    fmt.Scan(&a)
    fmt.Scan(&b)

    ans := ""
    
    if a*b%2 == 0{
        ans = "No"
    } else {
        ans = "Yes"
    }
    
    fmt.Println(ans)
}
