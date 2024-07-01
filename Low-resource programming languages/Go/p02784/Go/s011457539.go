package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)


func next() int {
  sc.Scan()
  text, err := strconv.Atoi(sc.Text())
  if err != nil {
    panic(err)
  }
  return text
}

func main() {
  sc.Split(bufio.ScanWords)
  h := next()
  n := next()
  maxAttackPoint := 0

  for i := 0; i < n; i++ {
    maxAttackPoint += next()
  }
  
  if h <= maxAttackPoint {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}