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
		var di int
		if i == n-1 {
			di = k - A[i] + A[0]
		} else {
			di = A[i+1] - A[i]
		}
		d = append(d, int(math.Abs(float64(di))))
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