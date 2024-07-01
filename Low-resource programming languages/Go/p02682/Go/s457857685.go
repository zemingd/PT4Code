package main

import(
"fmt"
)

func main() {
  var a int
  var b int
  var c int
  var k int
  
fmt.Scan(&a,&b,&c,&k)
  if k - a <= 0{  
    fmt.Println(k)
  }else if k - a - b <=0{
    fmt.Println(a)
  }else{ 
    fmt.Println((k-a-b)*-1 + (a))
  }
}
