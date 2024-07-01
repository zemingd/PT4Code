package main

import (
	"fmt"
  "strings"
)

func main() {
	var s string
  var n int
	fmt.Scan(&n, &s)
  cnt := strings.Count(s, "ABC")
	fmt.Println(cnt)
}
