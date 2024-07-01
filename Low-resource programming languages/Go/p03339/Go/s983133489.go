package main

import (
	"fmt"
	"math"
	"strings"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	cnt := math.MaxInt32
	for i := 1; i < n; i++ {
		w := s[:i-1]
		e := s[i+1:]
		var tc int
		tc += strings.Count(w, "W")
		tc += strings.Count(e, "E")

		cnt = int(math.Min(float64(cnt), float64(tc)))
	}

	fmt.Println(cnt)
}
