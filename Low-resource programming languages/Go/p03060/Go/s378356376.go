package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

func main() {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()

  n, e := strconv.Atoi(sc.Text())
  if e != nil {
    panic(e)
  }

  v := make([]int, n)

  max := 0

  for i := 0; i < n; i++ {
    sc.Scan()
    a, e := strconv.Atoi(sc.Text())
    if e != nil {
      panic(e)
    }
    v[i] = a
  }

  for i := 0; i < n; i++ {
    sc.Scan()
    a, e := strconv.Atoi(sc.Text())
    if e != nil {
      panic(e)
    }
    if v[i] > a {
      max += v[i] - a
    }
  }

  fmt.Println(max)
}
