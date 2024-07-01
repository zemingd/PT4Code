package main
import (
  "fmt"
)
func main() {
  var s, t string
  fmt.Scan(&s, &t)
  result := "No"
  for startIndex := 0; startIndex < len(s); startIndex++ {
    isSame := true
    for i := 0; i < len(s); i++ {
      if s[(startIndex+i)%len(s)] != t[i] {
        isSame = false
      }
      if !isSame {
        break
      }
    }
    if isSame {
      result = "Yes"
      break
    }
  }
  fmt.Println(result)
}