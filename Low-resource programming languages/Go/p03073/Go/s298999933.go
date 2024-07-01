package main

import (
  "fmt"
  "bufio"
  "os"
)

func main() {
  count := [2] int{0, 0}

  rd := bufio.NewReaderSize(os.Stdin, 100000)
  s := make([]byte, 0, 100000)
  for {
    l, p, _ := rd.ReadLine()
    s = append(s, l...)
    if !p {
      break
    }
  }

  n := len(s)
  fmt.Println(n)

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

  if count[0] < count[1] {
    fmt.Println(count[0])
  } else {
    fmt.Println(count[1])
  }
}
