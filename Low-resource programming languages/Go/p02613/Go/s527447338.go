package main
 
import (
	"fmt"
)

type count struct {
  AC int
  WA int
  TLE int
  RE int
}
 
func main() {
    var N int
    fmt.Scanf("%d", &N)
 
    answers := make([]string, N)
    cnt := count{AC: 0, WA:0, TLE:0, RE:0}
    for i := range answers{
      fmt.Scan(&answers[i])

      switch result := answers[i]; result {
        case "AC": 
          cnt.AC += 1
        case "WA":
          cnt.WA += 1
        case "TLE":
          cnt.TLE += 1
        case "RE":
          cnt.RE += 1
      }
    }

    fmt.Printf("AC x %d\n", cnt.AC)
    fmt.Printf("WA x %d\n", cnt.WA)
    fmt.Printf("TLE x %d\n", cnt.TLE)
    fmt.Printf("RE x %d\n", cnt.RE)
}