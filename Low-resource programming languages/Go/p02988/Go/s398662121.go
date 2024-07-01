package main

import (
  "fmt"
)

func main() {

  var n int
  fmt.Scanln(&n)
  p := scanStrings(n)
  
  count := 0
  for i:=1; i<n-1; i++ {
    
    a := p[i-1]
    b := p[i]
    c := p[i+1]
    
    if (a < b && b < c) || (a > b && b > c) {
      count += 1
    }
  }
  fmt.Print(count)
}

func scanStrings(len int) (strings []string) {
    var str string
    for i := 0; i < len; i++ {
        fmt.Scanf("%s", &str)
        strings = append(strings, str)
    }
    return
}