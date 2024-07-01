package main

import (
  "fmt"
  "bufio"
  "os"
)

func main() {
  count := [2] int{0, 0}

  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  s := sc.Text()

  n := len(s)

  for i := 0; i < n; i++ {
    if i % 2 == 0 {
      if s[i] == 48 {
        count[0]++
      } else {
        count[1]++
      }
    } else {
      if s[i] == 48 {
        count[1]++
      } else {
        count[0]++
      }
    }
  }

  if count[0] < count [1] {
    fmt.Println(count[0])
  } else {
    fmt.Println(count[1])
  }
}
