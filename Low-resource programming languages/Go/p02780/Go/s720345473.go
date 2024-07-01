package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

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

func sum(is []int, k int) int {
	var s int
	for _, v := range is {
		s += v
	}
	return s + k
}

func main() {
	nextReader = newScanner()
	N := nextInt()
	K := nextInt()
	pi := nextInts(N)
	Ekm := 0.
	ignore := false
	var Eki float64
	for i := 0; i <= N-K; i++ {
		if ignore {
			ignore = false
			continue
		}
		Eki = float64(sum(pi[i:K+i], K)) / 2.0
		if Eki > Ekm {
			Ekm = Eki
		}
		if i+K == N {
			break
		}
		if pi[i+K] < pi[i] {
			ignore = true
			continue
		}
	}
	fmt.Println(Ekm)
}
