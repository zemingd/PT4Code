package main

import "fmt"
import "strings"

func main(){
  var S string
  fmt.Scan(&S)

  result := strings.Replace(S, "7","8",1)
  // result[3] = "8"
  fmt.Println(result)
}
