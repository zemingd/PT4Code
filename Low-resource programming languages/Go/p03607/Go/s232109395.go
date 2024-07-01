package main

import "fmt"

func main() {

  var n int
  fmt.Scan(&n)
  mp := map[int]struct{}{}

  for i := 0; i < n; i++ {
    var a int
    fmt.Scan(&a)

    if _, ok := mp[a]; ok {
      delete(mp, a)
    } else {
      mp[a] = struct{}{}
    }
  }

  fmt.Println(len(mp))
}
