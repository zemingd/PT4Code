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
  T := make([]int, 3)
  t := 0
  for _, h := range H {
    if t == 0 {
      if h >= T[1] {
        T[1] = h
      } else {
        t = 1
      }
      T[2] = h
    } else {
      if h <= T[2] {
        T[2] = h
      } else {
        cnt += T[1] - min(T[0], T[2])
        T[0] = T[2]
        T[1] = h
        t = 0
      }
    }
  }
  cnt += T[1] - min(T[0], T[2])
  fmt.Println(cnt)
}