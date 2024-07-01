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
  n, _ := strconv.Atoi(sc.Text())

  a := make([]int, n)
  for i := 0; i < n; i++ {
    sc.Scan()
    a[i], _ = strconv.Atoi(sc.Text())
  }

  b := make([]int, 0)
  c := make([]int, n)
  for i := 0; i < n; i++ {
    if a[i] != c[i] {
      b = append(b, i + 1)
      for j := i; j < n; j += i + 1 {
        c[j] = (c[j] + 1) % 2
      }
    }
  }
  fmt.Println(len(b))
  for i := 0; i < len(b); i++ {
    fmt.Print(b[i])
    fmt.Print(" ")
  }
  if len(b) > 0 {
    fmt.Println()
  }
}

