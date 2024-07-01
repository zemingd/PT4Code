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
  sc.Scan()
  g, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  b, _ := strconv.Atoi(sc.Text())

  if (g * 10 + b) % 4 == 0 {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }

}
