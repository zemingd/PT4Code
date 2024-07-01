package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func NextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	n := NextInt()
	a := make([]int, n)
	for i := range a {
		a[i] = NextInt() - 1
	}

	var cnt int
	m := map[int]bool{}
	for i := 0; ; {
		if m[i] {
			fmt.Println(-1)
			break
		}
		m[i] = true
		cnt++

		if a[i] == 1 {
			fmt.Println(cnt)
			break
		}
		i = a[i]
	}
}
