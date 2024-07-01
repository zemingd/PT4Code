package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"

  "sort"
)

func foo(a []int, n, k int) int {
  var seki []int
  for i := 0; i < n; i++ {
    for j := i+1; j < n; j++ {
      seki = append(seki, a[i] * a[j])
    }
  }
  sort.Ints(seki)

  return seki[k-1]
}

// input process
var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func nextText() string {
    sc.Scan()
    return sc.Text()
}

func main() {
  // input
  sc.Split(bufio.ScanWords)
  n := nextInt()
  k := nextInt()

  // store to slice
  var a []int
  for i := 0; i < n; i++ {
    a = append(a, nextInt())
  }

  // output
  fmt.Println(foo(a, n, k))
}
