package main

import(
  "fmt"
)

func main(){
  var str string
  var sum int
  fmt.Scan( &str )

  for i := 0 ; i < 3 ; i++ {
    if str[i] == '1' {
      sum++
    }
  }

  fmt.Print(sum)
}