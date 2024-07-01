package main

import "fmt"


func main() {
  var K, A, B int
  
  fmt.Scanf("%d\n", &K)
  fmt.Scanf("%d %d\n", &A, &B)
  
  if A%K == 0 {
    fmt.Println("OK")
    return
  }
  
  if A-(A%K)+K<= B {
    fmt.Println("OK")
  }else{
    fmt.Println("NG")
  }
}