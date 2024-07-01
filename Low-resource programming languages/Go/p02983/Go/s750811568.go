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
  l, _ := strconv.Atoi(sc.Text())
  sc.Scan()
  r, _ := strconv.Atoi(sc.Text())

  if r - l > 2018 {
    fmt.Println(0)
    os.Exit(0)
  }
  l %= 2019
  r %= 2019

  if l > r {
    fmt.Println(0)
  } else {
    fmt.Println((l * (l + 1)) % 2019)
  }
}

