package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	maxBufferSize     = 2000000 // check
	initialBufferSize = 20000
)

func Reverse(a []int) {
	n := len(a)
	for i := 0; i < n/2; i++ {
		a[i], a[n-i-1] = a[n-i-1], a[i]
	}
}

func BinarySearch(a []int, begin, end, target int) (int, int) {
	lb, ub := begin-1, end-1
	for ub-lb > 1 {
		mid := (lb + ub) / 2
		if a[mid] <= target {
			lb = mid
		} else {
			ub = mid
		}
	}
	return lb, ub
}

func Fill(a []int, value int) {
	for i := 0; i < len(a); i++ {
		a[i] = value
	}
}

func solve() {
	sc := bufio.NewScanner(os.Stdin)
	buffer := make([]byte, initialBufferSize)
	sc.Buffer(buffer, maxBufferSize)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	a := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}

	Reverse(a)

	b := make([]int, n)
	Fill(b, 1010101010)
	b[0] = a[0]
	for i := 1; i < n; i++ {
		_, ub := BinarySearch(b, 0, n, a[i])
		b[ub] = a[i]
	}

	var ans int
	for i := 0; i < n; i++ {
		if b[i] != 1010101010 {
			ans = i + 1
		}
	}

	fmt.Println(ans)
}

func main() {
	solve()
}
