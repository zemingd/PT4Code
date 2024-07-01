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

  p := make([]int, n)

  for i := 0; i < n; i++ {
    sc.Scan()
    p[i], _ = strconv.Atoi(sc.Text())
  }

  num := 0
  for i := 0; i < n - 2; i++ {
    if p[i + 1] > p[i] && p[i + 1] < p[i + 2] {
      num++
    }
    if p[i + 1] < p[i] && p[i + 1] > p[i + 2] {
      num++
    }
  }

  fmt.Println(num)

}

