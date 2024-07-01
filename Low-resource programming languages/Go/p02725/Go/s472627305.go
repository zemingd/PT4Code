package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var k, n int
	var a int
	var A []int
	fmt.Fscan(r, &k, &n)
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &a)
		A = append(A, a)
	}

	//	fmt.Fprintln(w, getMaxHappy(x))
	var d []int
	for i := 0; i < n; i++ {
		ni := i + 1
		if i == n-1 {
			ni = 0
		}
		d = append(d, int(math.Abs(float64(A[ni]-A[i]))))
	}

	// find max value mi is max value id
	m := 0
	mi := 0
	for i := 0; i < n; i++ {
		if d[i] > m {
			m = d[i]
			mi = i
		}
	}

	// sum d without max value
	result := 0
	for i := 0; i < n; i++ {
		if i == mi {
			continue
		}
		result += d[i]
	}

	fmt.Fprintln(w, result)
}