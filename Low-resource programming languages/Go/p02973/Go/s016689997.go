package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func bs(x int, a []int) int {
	l,r := -1,len(a)
	c := (l+r)/2
	for {
		if x < a[c] {
			r = c
		} else {
			l = c
		}

		c = (l+r)/2

		if l == r-1 {
			break
		}
	}

	return r
}

func main() {
	sc.Split(bufio.ScanWords)
	
	n := scanInt()
	a := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}

	b := make([]int, 0)

	b = append(b,a[n-1])
	ans := 1

	for i := n-2; i >= 0; i-- {
		c := bs(a[i],b)
		if c == len(b) {
			b = append(b,a[i])
			ans++
		} else {
			b[c] = a[i]
		}
		sort.Ints(b)
		// fmt.Println(b)
	}

	fmt.Println(ans)

}
