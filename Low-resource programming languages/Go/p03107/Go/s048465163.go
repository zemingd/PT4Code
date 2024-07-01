package main

import (
	"fmt"
	"math"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	fmt.Println(math.Min(float64(strings.Count(s, "0")), float64(strings.Count(s, "1"))) * 2)
}
