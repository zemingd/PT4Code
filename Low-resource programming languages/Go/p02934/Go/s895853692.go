package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanLine() []float64 {
	var s []float64
	scanner.Scan()
	for _, v := range strings.Split(scanner.Text(), " ") {
		i, _ := strconv.ParseFloat(v, 64)
		s = append(s, i)
	}
	return s
}

func main() {
	var n float64
	fmt.Scan(&n)
	s := scanLine()

	var denominator float64
	for _, v := range s {
		denominator += 1 / v
	}
	fmt.Println(1 / denominator)
}
