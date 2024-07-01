package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "sort"
)

func main() {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  n, e := strconv.Atoi(sc.Text())
  if e != nil {
    panic(e)
  }

  a := make([]int, n)

  for i := 0; i < n; i++ {
    sc.Scan()
    v, e := strconv.Atoi(sc.Text())
    if e != nil {
      panic(e)
    }
    a[i] = v
  }

  sort.Sort(sort.IntSlice(a))

  for i := a[1]; i > 0; i-- {
    j := 0
    miss := 0
    for j = 0; j < n; j++ {
      if a[j] % i > 0 {
        miss++
        if miss == 2 {
          break
        }
      }
    }
    if j == n {
      fmt.Println(i)
      os.Exit(0)
    }
  }
}
