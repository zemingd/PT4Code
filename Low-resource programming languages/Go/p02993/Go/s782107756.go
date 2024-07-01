package main

import (
  "fmt"
  "os"
  "bufio"
)

func main() {
  sc := bufio.NewScanner(os.Stdin)

  sc.Scan()
  s := sc.Text()

  for i := 0; i < len(s) - 1; i++ {
    if s[i] == s[i + 1] {
      fmt.Println("Bad")
      os.Exit(0)
    }
  }

  fmt.Println("Good")

}


