package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func toI(ss []string) []int {
	ret := make([]int, 0, len(ss))
	for _, s := range ss {
		n, _ := strconv.Atoi(strings.TrimSpace(s))
		ret = append(ret, n)
	}
	return ret
}

func main() {
	var n int
	fmt.Scan(&n)

	reader := bufio.NewReader(os.Stdin)

	A, _ := reader.ReadString('\n')
	B, _ := reader.ReadString('\n')
	C, _ := reader.ReadString('\n')

	a := toI(strings.Split(A, " "))
	b := toI(strings.Split(B, " "))
	c := toI(strings.Split(C, " "))

	sum := 0
	for i := 0; i < n; i++ {
		sum += b[i]
		if i > 0 && a[i-1]+1 == a[i] {
			sum += c[a[i-1]-1]
		}
	}
	fmt.Println(sum)
}
