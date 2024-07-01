package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
)


func foo(a []int) string {
  for _, e := range a {
    if e % 2 != 0 {
      continue
    }
    if e % 3 != 0 && e % 5 != 0 {
      return "DENIED"
    }
  }
  return "APPROVED"
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

  // store to slice
  var a []int
  for i := 0; i < n; i++ {
    a = append(a, nextInt())
  }

  // output
  fmt.Println(foo(a))
}
