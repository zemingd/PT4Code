package main

import (
  "fmt"
  "os"
  "bufio"
  "strconv"
  "math"
)

func main() {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  l, _ := strconv.Atoi(sc.Text())
  sc.Scan()
  r, _ := strconv.Atoi(sc.Text())

  if r - l > 2018 {
    fmt.Println(0)
    os.Exit(0)
  }
  r -= l / 2019 * 2019
  l %= 2019

  min := math.MaxInt32
  for i := l; i < r; i++ {
    tmp := i * (i + 1) % 2019
    if tmp < min {
      min = tmp
    }
  }
  fmt.Println(min)
}

