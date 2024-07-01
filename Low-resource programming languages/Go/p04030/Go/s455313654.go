package main

import (
  "fmt"
)

func main(){
  var b string
  fmt.Scan(&b)

  var out []rune
  for _,v := range b {
    switch v {
    case 'B':
      if len(out) > 0 {
        out = out[:len(out) - 1]
      }
      default:
        out = append(out, v)
    }
  }
  fmt.Println(string(out))
}