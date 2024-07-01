package main

import (
    "bufio"
    "fmt"
    "os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
    var s, t string
    if sc.Scan() {
        s = sc.Text()
    }
    if sc.Scan() {
        t = sc.Text()
    }

  if s == t[:len(s)]{
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}