package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
)

func main() {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  sc.Scan()
  k, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  s := sc.Text()

  for i, c := range s {
    if i == k - 1 {
      c += 'a' - 'A'
    }
    fmt.Print(string(c))
  }

  fmt.Println()

}
