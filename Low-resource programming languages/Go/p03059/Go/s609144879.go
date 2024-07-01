package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

func main() {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  a, e := strconv.Atoi(sc.Text())
  if e != nil {
    panic(e)
  }
  sc.Scan()
  b, e := strconv.Atoi(sc.Text())
  if e != nil {
    panic(e)
  }
  sc.Scan()
  t, e := strconv.Atoi(sc.Text())
  if e != nil {
    panic(e)
  }


  fmt.Println(t / a * b)
}
