package main

import (
  "fmt"
  "bufio"
  "os"
)

func main() {
  var count [4]int

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
        count[2]++
      } else {
        count[3]++
      }
    }
  }

  if count[0] + count[3] <= count[1] + count[2] {
    fmt.Println(count[0] + count[3])
  } else {
    fmt.Println(count[1] + count[2])
  }
}
