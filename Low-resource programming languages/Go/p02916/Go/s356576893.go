package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func min(a, b int) int {
	if a <= b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}

func yesno(result bool) {
	if result {
		fmt.Fprintln(write, "Yes")
	} else {
		fmt.Fprintln(write, "No")
	}
}

func printansStr(result bool, a, b string) {
	if result {
		fmt.Fprintln(write, a)
	} else {
		fmt.Fprintln(write, b)
	}
}

func printansInt(result bool, a, b int) {
	if result {
		fmt.Fprintln(write, a)
	} else {
		fmt.Fprintln(write, b)
	}
}

func main() {
	defer write.Flush()

	var n int
	fmt.Fscan(read, &n)

	A := make([]int, n)
	B := make([]int, n)
	C := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Fscan(read, &A[i])
	}
	for i := 0; i < n; i++ {
		fmt.Fscan(read, &B[i])
	}
	for i := 0; i < n-1; i++ {
		fmt.Fscan(read, &C[i])
	}

	pre := -2
	sum := 0
	for i := 0; i < n; i++ {
		sum += B[A[i]-1]
		if pre+1 == A[i]-1 {
			sum += C[pre]
		}
		pre = A[i] - 1
	}
	fmt.Println(sum)

}
