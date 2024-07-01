package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	var n, m int
	var a, b, c []int

	fmt.Scan(&n, &m)
	for i := 0; i < n; i++ {
		a = append(a, nextInt())
	}
	for i := 0; i < m*2; i++ {
		if i%2 == 0 {
			b = append(b, nextInt())
		} else {
			c = append(c, nextInt())
		}
	}

	sort.Ints(a)
	for i := 0; i < m; i++ {
		if a[0] > c[i] {
			continue
		}
		for j := 0; j < b[i]; j++ {
			if a[j] > c[i] {
				break
			}
			a[j] = c[i]
		}
		sort.Ints(a)
	}

	sum := 0
	for _, v := range a {
		sum += v
	}
	fmt.Println(sum)
}
