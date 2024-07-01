package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
)


func foo(a, b, c int) string {
  if a == b && a != c {
    return "Yes"
  }
  if a == c && a != b {
    return "Yes"
  }
  if b == c && a != b {
    return "Yes"
  }
  return "No"
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
  a := nextInt()
  b := nextInt()
  c := nextInt()

  // output
  fmt.Println(foo(a, b, c))
}
