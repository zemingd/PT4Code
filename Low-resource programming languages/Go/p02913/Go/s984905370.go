package main

import "fmt"
import "strings"

func main(){
    var N int
    fmt.Scan(&N)
    var S string
    fmt.Scan(&S)
    
    var max_length = 0
    
    for i := 0; i < N; i++ {
        for j := i + max_length; j < i + 1 + (N - i) / 2; j++ {
            if strings.Count(S[j + 1:], S[i:j + 1]) != 0 {
                max_length = j - i + 1
            }
        }
    }
    
    fmt.Println(max_length)
}


