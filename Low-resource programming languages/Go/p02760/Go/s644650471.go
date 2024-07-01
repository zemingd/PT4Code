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

func main() {
	defer write.Flush()

	a := make([][]int, 3)
	for i := range a {
		a[i] = make([]int, 3)
	}

	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Fscan(read, &a[i][j])
		}
	}

	var n int
	fmt.Fscan(read, &n)

	for i := 0; i < n; i++ {
		var b int
		fmt.Fscan(read, &b)
		for i := range a {
			for j := range a[i] {
				if a[i][j] == b {
					a[i][j] = -1
				}
			}
		}
	}

	ans := "No"
	for i := 0; i < 3; i++ {
		if a[i][0] == a[i][1] && a[i][0] == a[i][2] {
			ans = "Yes"
		}
		if a[0][i] == a[1][i] && a[0][i] == a[2][i] {
			ans = "Yes"
		}
	}

	if a[0][0] == a[1][1] && a[0][0] == a[2][2] {
		ans = "Yes"
	}
	if a[0][2] == a[1][1] && a[0][2] == a[2][0] {
		ans = "Yes"
	}
	fmt.Fprintln(write, ans)
}
