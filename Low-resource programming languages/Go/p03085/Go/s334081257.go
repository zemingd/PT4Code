package main

import "fmt"

func main() {
  bs := map[string]string{
    "A": "T",
    "C": "G",
    "G": "C",
    "T": "A",
  }
  var b string
  fmt.Scan(&b)
  fmt.Println(bs[b])
}
