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
			v := Ls[i] + Ls[j]
			for k := j + 1; k < N; k++ {
				if v > Ls[k] {
					ans++
				} else {
					break
				}
			}
		}
	}
	fmt.Println(ans)
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
