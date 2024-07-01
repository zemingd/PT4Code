package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func newInt() int {
  sc.Scan()
  i, _ := strconv.Atoi(sc.Text())
  return i
}

func main() {
  k := newInt()
  
  s := 7 % k
  for i := 1; i <= k; i++ {
    if s == 0 {
      fmt.Println(i)
      return
    }
    s = (s * 10 + 7) % k
  }
  fmt.Println(-1)
}