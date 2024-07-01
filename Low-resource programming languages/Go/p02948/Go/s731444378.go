package main

import (
	"fmt"
	"io"
	"os"
)

func chmax(a *int, b int) {
	if *a < b {
		*a = b
	}
}

func permutation(n int, k int) int {
	v := 1
	if 0 < k && k <= n {
		for i := 0; i < k; i++ {
			v *= (n - i)
		}
	} else if k > n {
		v = 0
	}
	return v
}

func factorial(n int) int {
	return permutation(n, n-1)
}

func combination(n int, k int) int {
	return permutation(n, k) / factorial(k)
}

func proc(r io.Reader, w io.Writer) {
	var n, m int
	var a, b int
	fmt.Fscanf(r, "%d %d", &n, &m)
	arr := make([][]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscanf(r, "%d %d", &a, &b)
		arr[i] = make([]int, 3)
		arr[i][0] = a
		arr[i][1] = b
	}
	res := 0
	for d := m - 1; d >= 0; d-- {
		amax := m - d
		sel := -1
		bmax := 0
		for i, v := range arr {
			if v[0] > amax {
				continue
			}
			if v[1] > bmax {
				sel = i
				bmax = arr[i][1]
			}
		}
		if sel < 0 {
			continue
		}
		arr[sel][0] = m + 1
		res += arr[sel][1]
	}
	fmt.Fprintf(w, "%d", res)
}

func main() {
	proc(os.Stdin, os.Stdout)
}
