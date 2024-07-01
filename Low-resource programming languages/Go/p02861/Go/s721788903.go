package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func nextPermutation(x sort.Interface) bool {
	n := x.Len() - 1
	if n < 1 {
		return false
	}
	j := n - 1
	for ; !x.Less(j, j+1); j-- {
		if j == 0 {
			return false
		}
	}
	l := n
	for !x.Less(j, l) {
		l--
	}
	x.Swap(j, l)
	for k, l := j+1, n; k < l; {
		x.Swap(k, l)
		k++
		l--
	}
	return true
}

func main() {
	defer write.Flush()

	var n int
	fmt.Fscan(read, &n)

	x := make([]int, n)
	y := make([]int, n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscan(read, &x[i], &y[i])
		a[i] = i
	}

	sum := 0.0
	for {
		for i := 0; i < n-1; i++ {
			sum += math.Sqrt(float64((x[a[i]]-x[a[i+1]])*(x[a[i]]-x[a[i+1]]) + (y[a[i]]-y[a[i+1]])*(y[a[i]]-y[a[i+1]])))
		}
		if !nextPermutation(sort.IntSlice(a)) {
			break
		}
	}
	for i := 1; i <= n; i++ {
		sum /= float64(i)
	}
	fmt.Fprintln(write, sum)
}
