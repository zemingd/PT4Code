package main

import (
  "fmt"
  "os"
  "bufio"
  "strconv"
)

func main() {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()

  sc.Scan()
  m, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  l, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  r, _ := strconv.Atoi(sc.Text())

  for i := 1; i < m; i++ {
    sc.Scan()
    p, _ := strconv.Atoi(sc.Text())
    sc.Scan()
    q, _ := strconv.Atoi(sc.Text())

    if p > l {
      l = p
    }

    if q < r {
      r = q
    }
  }

  fmt.Println(r - l + 1)
}

