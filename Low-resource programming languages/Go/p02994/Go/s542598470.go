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

  sc.Scan()
  l, _ := strconv.Atoi(sc.Text())

  zero := false
  sum := 0
  i := l
  for i = l; i < n + l; i++ {
    sum += i
    if i == 0 {
      zero = true
    }
  }

  if zero {
    fmt.Println(sum)
  } else if l < 0 {
    fmt.Println(sum - i + 1)
  } else {
    fmt.Println(sum - l)
  }

}

