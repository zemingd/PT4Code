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

  if r - l >= 2019 {
    fmt.Println(0)
  } else {
    l %= 2019
    r %= 2019
    if r < l {
      fmt.Println(0)
    } else {
      fmt.Println(l * (l + 1) % 2019)
    }
  }
}

