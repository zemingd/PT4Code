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
  p, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  q, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  r, _ := strconv.Atoi(sc.Text())

  if p + q < q + r {
    if p + q < r + p {
      fmt.Println(p + q)
    } else {
      fmt.Println(r + p)
    }
  } else {
    if q + r < r + p {
      fmt.Println(q + r)
    } else {
      fmt.Println(r + p)
    }
  }

}

