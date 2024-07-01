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
	var n []int
	scanner.Scan()
	for _, v := range strings.Split(scanner.Text(), " ") {
		var i int
		i, _ = strconv.Atoi(v)
		n = append(n, i)
	}
	return n
}

func main() {
	var n int
	fmt.Scan(&n)
	a, b, c := scanLine(), scanLine(), scanLine()

	result := 0
	var prev int
	for _, v := range a {
		result += b[v-1]
		if prev+1 == v {
			result += c[v-2]
		}
		prev = v
	}

	fmt.Println(result)
}
