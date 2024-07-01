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
  a, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  b, _ := strconv.Atoi(sc.Text())

  if a < 6 {
    fmt.Println(0)
  } else if a < 13 {
    fmt.Println(b / 2)
  } else {
    fmt.Println(b)
  }
}

