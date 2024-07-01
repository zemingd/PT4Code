package main

import (
  "fmt"
  "os"
  "bufio"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func min(A ...int) (ret int) {
  ret = A[0]
  for _, a := range A {
    if a < ret {
      ret = a
    }
  }
  return
}

func main() {
  var N int
  fmt.Scan(&N)
  H := make([]int, N)
  sc.Split(bufio.ScanWords)
  for i, _ := range H {
    sc.Scan()
    x, _ := strconv.Atoi(sc.Text())
    H[i] = x
  }
  cnt := 0
  var high, low int
  mode := 0
  for _, h := range H {
    if mode == 0 {
      if h >= high {
        high = h
      } else {
        low = h
        mode = 1
      }
    } else {
      if h <= low {
        low = h
      } else {
        cnt += high - low
        high = h
        mode = 0
      }
    }
  }
  cnt += high
  fmt.Println(cnt)
}