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
  x, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  a, _ := strconv.Atoi(sc.Text())

  if x < a {
    fmt.Println(0)
  } else {
    fmt.Println(10)
  }

}

