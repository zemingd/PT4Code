package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	l := nextLine()

	a := make([]int, n+1)
	b := make([]int, n)

	for i, h := range strings.Split(l, " ") {
		integer, _ := strconv.Atoi(h)
		a[i] = integer
	}

	l = nextLine()

	for i, h := range strings.Split(l, " ") {
		integer, _ := strconv.Atoi(h)
		b[i] = integer
	}

	total := 0
	for i:=0; i<n ; i++ {
		if a[i] < b[i] {
			total += a[i]
			b[i] = b[i] - a[i]
			a[i] = 0
		} else {
			total += b[i]
			a[i] = a[i] - b[i]
			b[i] = 0
		}

		if a[i+1] < b[i] {
			total += a[i+1]
			b[i] = b[i] - a[i+1]
			a[i+1] = 0
		} else {
			total += b[i]
			a[i+1] = a[i+1] - b[i]
			b[i] = 0
		}
	}

	fmt.Printf("%d", total)
}