package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
)


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
  // input
  sc.Split(bufio.ScanWords)
  n := nextInt()
  if n%2 == 0 {
    fmt.Println(n/2)
  } else {
    fmt.Println(n/2+1)
  }

}
