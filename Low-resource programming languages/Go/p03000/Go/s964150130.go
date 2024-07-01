package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanLine() []int {
	var s []int
	scanner.Scan()
	for _, v := range strings.Split(scanner.Text(), " ") {
		i, _ := strconv.Atoi(v)
		s = append(s, i)
	}
	return s
}

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	l := scanLine()

	d := 0
	result := 0
	for i := 1; i < n+1; i++ {
		if d <= x {
			result++
		}
		d += l[i-1]
	}
	fmt.Println(result)
}
