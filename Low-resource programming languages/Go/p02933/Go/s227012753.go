package main
 
import (
  "fmt"
  "unicode/utf8"
)

func main() {
 
  var a int
  var s string
  fmt.Scan(&a)
  fmt.Scan(&s)
  
  if utf8.RuneCountInString(s) >= 1 && utf8.RuneCountInString(s) <= 10 {
    if 3200 <= a && a < 5000 {
      fmt.Println(s) 
    } else if 2800 <= a && a < 3200 {
      fmt.Println("red")
    }
  }
}