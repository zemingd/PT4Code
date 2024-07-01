package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner

func initScanner(r io.Reader) *bufio.Scanner {
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	return sc
}

func main() {
	sc = initScanner(os.Stdin)
	fmt.Println(resolve(parseProblem()))
}

func parseProblem() int {
	ts := nextIntSlice(sc, 5)
	min := math.MaxInt32
	for p := range permutations(5) {
		t := 0
		for _, i := range p {
			t = (t + 9) / 10 * 10
			t += ts[i]
		}
		if min > t {
			min = t
		}
	}
	return min
}

func permutations(l int) chan []int {
	ch := make(chan []int)
	go func() {
		dfsPermutations(0, make([]bool, l), []int{}, func(perm []int) bool {
			p := make([]int, len(perm))
			copy(p, perm)
			ch <- p
			return false
		})
		close(ch)
	}()
	return ch
}

func dfsPermutations(pos int, used []bool, perm []int, atLeaf func(perm []int) (halt bool)) (halt bool) {
	l := len(used)
	if pos == l {
		if atLeaf(perm) {
			return true
		}
	}

	for i := 0; i < l; i++ {
		if used[i] {
			continue
		}
		used[i] = true
		if dfsPermutations(pos+1, used, append(perm, i), atLeaf) {
			return true
		}
		used[i] = false
	}
	return false
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	return int(a)
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func nextIntSlice(sc *bufio.Scanner, n int) (a []int) {

	a = make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt(sc)
	}
	return a
}

func resolve(n int) int {
	return n
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
