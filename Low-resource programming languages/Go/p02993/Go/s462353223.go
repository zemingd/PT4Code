package main

import(
  
  "fmt"
  
)

func main() {
  var s string
  var count int
  fmt.Scan(&s)
  

  for i := 0; i <= 2; i++ {
    for e := i + 1; e <= 3; e++ {
      if s[i] == s[e] {
        count++
        break
      }
    }
  }
  
  if count = 1 {
    fmt.Println("Bad")
  }else{
    fmt.Println("Good")
  }
  
  
  
  
}