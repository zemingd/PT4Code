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

  min := 10000000
  for i := 0; i < 5; i++ {
    sc.Scan()
    input, _ := strconv.Atoi(sc.Text())
    if input < min {
      min = input
    }
  }

  fmt.Println((n + min - 1) / min + 4)
}
