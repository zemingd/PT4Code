package main

import (
       "fmt"
       "strings"
)

var N, K int
var S string

func main() {
     fmt.Scan(&N, &K, &S)
     tako := strings.Split(S, "")
     var ika string
     
     for i := 0; i < N; i++ {
         if i == K - 1 {
           ika += strings.ToLower(tako[K-1])
         } else {
           ika += tako[i]
         }
}
     fmt.Printf("%v %v\n%s\n", N, K, ika)
}