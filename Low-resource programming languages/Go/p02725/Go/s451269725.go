package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	r := bufio.newreader(os.stdin)
	w := bufio.newwriter(os.stdout)
	defer w.flush()

	var k, n int
	var a int
	var a []int
	fmt.fscan(r, &k, &n)
	for i := 0; i < n; i++ {
		fmt.fscan(r, &a)
		a = append(a, a)
	}

	//	fmt.fprintln(w, getmaxhappy(x))
	var d []int
	for i := 0; i < n; i++ {
		var di int
		if i == n-1 {
			di = 20 - a[i] + a[0]
		} else {
			di = a[i+1] - a[i]
		}
		d = append(d, int(math.abs(float64(di))))
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
	fmt.println(m, d)

	// sum d without max value
	result := 0
	for i := 0; i < n; i++ {
		if i == mi {
			continue
		}
		result += d[i]
	}

	fmt.fprintln(w, result)
}