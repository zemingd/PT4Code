package main
 
import (
	"fmt"
)

func main() {

  var S string
  var T string
  fmt.Scan(&S)
  fmt.Scan(&T)
  var result bool = false
  for i := 0 ;i < len(S); i++ {
    if S == T {
     result = true
      break
    }
    S= S[len(S)-1:] +S[:len(S)-1]
  }
  if result {
    fmt.Printf("Yes")
  } else {
    fmt.Printf("No")
  }
}