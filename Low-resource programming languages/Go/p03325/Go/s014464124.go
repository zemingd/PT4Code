package main

import (
    "bufio"
    "fmt"
    "os"
)

func bicnt(x int) int {
  cnt := 0
  for x > 0 && x % 2 == 0 {
    cnt++
    x /= 2
  }
  return cnt
}

func main() {
    r := bufio.NewReader(os.Stdin)
    w := bufio.NewWriter(os.Stdout)
    defer w.Flush()

    var n int
    fmt.Fscan(r, &n)
    ans := 0
    for i := 0; i < n; i++ {
      var a int
      fmt.Fscan(r, &a)
      ans += bicnt(a)
    }
    fmt.Fprintln(w, ans)
}
