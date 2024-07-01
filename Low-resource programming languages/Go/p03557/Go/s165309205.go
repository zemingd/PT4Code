package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	scanner.Buffer([]byte{}, 1000000000)

	var n int
	fmt.Scan(&n)

	a := scanLine()
	b := scanLine()
	c := scanLine()

	sort.Ints(a)
	sort.Ints(b)
	sort.Ints(c)

	ans := 0
	for _, v := range b {
		aIndex := sort.Search(n, func(i int) bool { return a[i] >= v }) - 1
		bIndex := sort.Search(n, func(i int) bool { return c[i] > v })
		ans += (aIndex + 1) * (n - bIndex)
	}
	fmt.Println(ans)
}
