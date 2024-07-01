package main

import (
  "fmt"
	"strings"
)

func main() {
  var s, t string
  fmt.Scan(&s,&t)

  if strings.HasPrefix(t, s) {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }

}
