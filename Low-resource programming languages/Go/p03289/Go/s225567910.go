package main
import (
  "fmt"
  // "math"
)

func main() {
  var (
    S string
  )
  fmt.Scan(&S)

  if string(S[0]) != "A" {
    fmt.Println("WA")
    return
  }

  cCount := 0
  for i := 2; i < len(S) - 1; i++ {  
    if (string(S[i]) == "C") {
      cCount++
    }
    if (cCount > 1) {
      fmt.Println("WA")
      return
    }
    if (i == len(S) - 2 && cCount == 0) {
      fmt.Println("WA")
      return
    }
  }

  for i := 0; i < len(S); i++ {
    upperCount := 0
    if (S[i] >= 65 && S[i] <= 90) {
      upperCount++
    }
    if (upperCount > 2) {
      fmt.Println("WA")
      return
    }
  }

  fmt.Println("AC")

}
