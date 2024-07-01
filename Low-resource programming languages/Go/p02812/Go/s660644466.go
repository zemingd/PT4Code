package main

import (
	"fmt"
  "strings"
)

func main() {
	var s string
	fmt.Scan(&s)
  cnt := strings.Count(s, "ABC")
	fmt.Println(cnt)
}
