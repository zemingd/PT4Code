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
  if m == 0 {
    if n == 1 {
      fmt.Println(0)
    } else {
      fmt.Println(int(math.Pow(10, float64(n-1))))
    }
    return
  }
  var cex map[int]bool = map[int]bool{}
  var cs map[int]int = map[int]int{}
  for i := 0; i < m; i++ {
    s := nextInt()
    c := nextInt()
    if cex[s] && cs[s] != c {
      fmt.Println(-1)
      return
    }
    cex[s] = true
    cs[s] = c
  }
  ans := 0
  min := 5
  for s, c := range cs {
    if s < min {
      min = s
    }
    ans += c * int(math.Pow(10, float64(n - s)))
  }
  if n != 1 && cs[min] == 0 {
    fmt.Println(-1)
    return
  }
  if min != 1 {
    ans += int(math.Pow(10, float64(n-1)))
  }
  fmt.Println(ans)
}
