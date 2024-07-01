package main

import "fmt"

func main() {
  var N int
  cake := 4
  dounut := 7
  inc := 0
  fmt.Scan(&N)

  for c := 0; c * cake <= N; c++ {
    for d := 0; d * dounut <= N; d++{
      total := cake * c + dounut * d
      if N == total {
        inc ++
      }
    }
  }

  if inc > 0 {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}