package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)


func foo(h, x int) string {
  if x < h {
    return "No"
  } else {
    return "Yes"
  }
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main() {
  var h int
  fmt.Scan(&h)
  
  sc.Split(bufio.ScanWords)
  next := nextInt()
  x := 0
  for i := 0; i < next; i++ {
    x += nextInt()
  }
  fmt.Println(foo(h, x))
}
