package main

import (
  "fmt"
  "math"
)

func main() {
  var N int
  A := [1000001][3]float64{}

  fmt.Scan(&N)

  for i := 0; i < N; i++ {
    fmt.Scan(&A[i+1][0])
    fmt.Scan(&A[i+1][1])
    fmt.Scan(&A[i+1][2])
  }

  flag := true
  for i := 0; i < N; i++ {
    if A[i+1][0] - A[i][0] > math.Abs(A[i+1][1] - A[i][1]) + math.Abs(A[i+1][2] - A[i][2]) {
      if int(A[i+1][0] - A[i][0] - math.Abs(A[i+1][1] - A[i][1]) - math.Abs(A[i+1][2] - A[i][2]))%2 != 0 {
        flag = false
        break
      }
    } else if A[i+1][0] - A[i][0] < math.Abs(A[i+1][1] - A[i][1]) + math.Abs(A[i+1][2] - A[i][2]) {
      flag = false
      break
    }
  }

  if flag {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }

}
