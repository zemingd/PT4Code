package main
import (
  "fmt"
)

func main() {
  var N int
  fmt.Scan(&N)
  oddA := make(map[int]int)
  evenA := make(map[int]int)
  for i := 0; i < N; i++ {
    var n int
    fmt.Scan(&n)
    if i % 2 == 0 {
      evenA[n]++
    } else {
      oddA[n]++
    }
  }
  var evenMax, evenNext, evenMaxKey int
  for k, v := range(evenA) {
    if v > evenMax {
      evenMax = v
      evenMaxKey = k
    } else if v > evenNext {
      evenNext = v
    }
  }

  var oddMax, oddNext, oddMaxKey int
  for k, v := range(oddA) {
    if v > oddMax {
      oddMax = v
      oddMaxKey = k
    } else if v > oddNext {
      oddNext = v
    }
  }
  if evenMaxKey != oddMaxKey {
    fmt.Println(N - oddMax - evenMax)
  } else {
    if evenNext > oddNext {
      fmt.Println(N - oddMax - evenNext)
    } else {
      fmt.Println(N - oddNext - evenMax)
    }
  }
}
