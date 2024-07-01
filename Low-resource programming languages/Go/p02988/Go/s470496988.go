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
	var n int
	fmt.Scan(&n)
	p := scanLine()

	var result int
	for i := range p {
		if i == 0 || i == n-1 {
			continue
		}
		if p[i-1] < p[i] && p[i] < p[i+1] || p[i+1] < p[i] && p[i] < p[i-1] {
			result++
		}
	}
	fmt.Println(result)
}
