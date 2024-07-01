package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

func scanNext(sc *bufio.Scanner) int {
  sc.Scan()
  n, err := strconv.Atoi(sc.Text())
  if err != nil {
    panic(err)
  }
  return n
}

func main() {
  sc := bufio.NewScanner(os.Stdin)

  n := scanNext(sc)
  min_r := scanNext(sc)
  max_profit := -10000000000

  for i := 1; i < n; i++ {
    r := scanNext(sc)
    if r - min_r > max_profit {
      max_profit = r - min_r
    }
    if r < min_r {
      min_r = r
    }
  }

  fmt.Println(max_profit)
}
