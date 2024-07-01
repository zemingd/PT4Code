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
  a, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  b, _ := strconv.Atoi(sc.Text())

  if a == b {
    fmt.Println(a + b)
  } else a > b {
    fmt.Println(a * 2 - 1)
  } else {
    fmt.Println(b * 2 - 1)
  }
}
