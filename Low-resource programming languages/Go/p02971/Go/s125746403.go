package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var n int
	var a []int
	sc := bufio.NewScanner(os.Stdin)

	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		sc.Scan()
		t, _ := strconv.Atoi(sc.Text())
		a = append(a, t)
	}

	for j := 0; j < len(a); j++ {
		var b []int
		b = append(a[j+1:], a[:j]...)
		sort.Slice(b, func(x, y int) bool { return b[x] > b[y] })
		fmt.Println(b[0])
	}

}
