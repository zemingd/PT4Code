package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	nextReader = newScanner()
	N := nextInt()
	Ls := nextInts(N)
	sort.Ints(Ls)

	ans := 0
	for i := 0; i < N; i++ {
		for j := i + 1; j < N; j++ {
			ans += search(Ls[j+1:], Ls[i]+Ls[j])
		}
	}
	fmt.Println(ans)
}

func search(l []int, key int) int {
	left := 0
	right := len(l)
	for left < right {
		mid := (left + right) / 2
		if key <= l[mid] {
			right = mid
		} else {
			left = mid + 1
		}
	}
	return left
}

// ---------------------------------------------------------------
// I/O
// ---------------------------------------------------------------
var nextReader func() string

func newScanner() func() string {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 1024), int(1e11))
	sc.Split(bufio.ScanWords)
	return func() string {
		sc.Scan()
		return sc.Text()
	}
}

func nextString() string { return nextReader() }

func nextInt() int { n, _ := strconv.Atoi(nextReader()); return n }

func nextInts(size int) []int {
	ns := make([]int, size)
	for i := 0; i < size; i++ {
		ns[i] = nextInt()
	}
	return ns
}
