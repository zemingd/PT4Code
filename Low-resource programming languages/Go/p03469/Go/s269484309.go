package main                         

import "fmt"

func main() {
  var s string
  fmt.Scan(&s)

  fmt.Printf("%s\n", "2018" + s[4:])

}
