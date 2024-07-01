package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
  "math"
)


var sc = bufio.NewScanner(os.Stdin)
func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main() {
  sc.Split(bufio.ScanWords)
  n := nextInt()
  m := nextInt()
  var cex map[int]bool = map[int]bool{}
  var cs map[int]int = map[int]int{}
  for i := 0; i < m; i++ {
    s := nextInt()
    c := nextInt()
    if n != 1 && s == 1 && c == 0 {
      fmt.Println(-1)
      return
    }
    if cex[s] && cs[s] != c {
      fmt.Println(-1)
      return
    }
    cex[s] = true
    cs[s] = c
  }
  ans := 0
  for s, c := range cs {
    ans += c * int(math.Pow(10, float64(n - s)))
  }
  if ans == 0 && n != 1 {
    fmt.Println(-1)
    return
  }
  fmt.Println(ans)
}
