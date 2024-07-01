package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	for i := 0; i < n; i++ {
		b[i] = nextInt()
	}

	for i := 0; i < n; i++ {
		c[i] = nextInt()
	}

	sort.Ints(a)
	sort.Ints(b)
	sort.Ints(c)

	count := 0
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			for k := 0; k < n; k++ {
				if a[i] < b[j] && b[j] < c[k] {
					count++
				}
			}
		}
	}

	fmt.Println(count)

}
