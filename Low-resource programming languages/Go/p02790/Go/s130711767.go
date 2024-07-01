package main

import (
	"fmt"
	"math"
	"strconv"
	"strings"
)

func main() {
	var a, b int
	A := strings.Repeat(strconv.Itoa(a), b)
	B := strings.Repeat(strconv.Itoa(b), a)

	fmt.Println(math.Min(float64(strconv.Atoi(A)), float64(strconv.Atoi(B))))
}
