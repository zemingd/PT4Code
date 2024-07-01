package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)


func next() int {
  sc.Scan()
  i, _ := strconv.Atoi(sc.Text())
  return i
}

func main() {
  n := next()
  arr:= make([]int, n, n)
  minP := n + 1
  i := 0
  for k := 0; k < n; k++ {
    arr[k] = next()
    if arr[k] < minP {
      minP = arrP[k]
      i++
    }
  }
  fmt.Println(i)
}