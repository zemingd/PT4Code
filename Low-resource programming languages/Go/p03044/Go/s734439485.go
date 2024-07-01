package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanInt() int {
	scanner.Scan()
	a, err := strconv.Atoi(scanner.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func makeLengths(n int, u, v, w, l []int) {
	l[0] = 0
	var impl func(p, gp int)
	impl = func(p, gp int) {
		for i := 0; i < n-1; i++ {
			if u[i]-1 == p && v[i]-1 != gp {
				l[v[i]-1] = l[u[i]-1] + w[i]
				impl(v[i]-1, u[i]-1)
			}
			if u[i]-1 != gp && v[i]-1 == p {
				l[u[i]-1] = l[v[i]-1] + w[i]
				impl(u[i]-1, v[i]-1)
			}
		}
	}
	impl(0, -1)
}

func main() {
	scanner.Split(bufio.ScanWords)

	n := scanInt()

	u := make([]int, n-1)
	v := make([]int, n-1)
	w := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		u[i] = scanInt()
		v[i] = scanInt()
		w[i] = scanInt()
	}

	l := make([]int, n)
	makeLengths(n, u, v, w, l)

	for i := range l {
		if l[i]%2 == 0 {
			fmt.Println(0)
		} else {
			fmt.Println(1)
		}
	}
}