
package main

import (
  "fmt"
)

func main() {
   var H, A int
   fmt.Scan(&H, &A)

   if H % A == 0 {
     fmt.Println(H / A)
   } else {
     fmt.Println(H / A + 1)
   }
}
