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

func gcd(a, b int) int {
	if a%b == 0 {
		return b
	}
	return gcd(b, a%b)
}

func main() {
	defer write.Flush()

	var n int
	fmt.Fscan(read, &n)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscan(read, &a[i])
	}

	ar := make([]int, n)
	ar[n-1] = a[n-1]
	for i := n - 2; i >= 0; i-- {
		ar[i] = gcd(ar[i+1], a[i])
	}

	ans := ar[1]
	var al int
	for i := 0; i < n-2; i++ {
		if i == 0 {
			al = a[0]
		} else {
			al = gcd(al, a[i])
		}
		v := gcd(al, ar[i+2])
		if ans < v {
			ans = v
		}
	}
	al = gcd(al, a[n-1])
	if ans < al {
		ans = al
	}
	fmt.Fprintln(write, ans)
}
