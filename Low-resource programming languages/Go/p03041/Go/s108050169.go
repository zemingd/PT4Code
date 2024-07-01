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
     var sake string
     
     for i := 0; i < N; i++ {
         if i == K {
           aho := i
           strings.ToLower(sake[i])        
         }
         sake = sake + tako[i]
}
//     sake := tako[0] + tako[1] + tako[2]
     fmt.Printf("%v %v\n%s\n", N, K, sake)

}