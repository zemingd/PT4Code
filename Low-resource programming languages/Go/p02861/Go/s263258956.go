package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc *bufio.Scanner
var out *bufio.Writer

func main() {
	sc = bufio.NewScanner(os.Stdin)
	//bytes, _ := ioutil.ReadFile("./stdin.txt")
	//sc = bufio.NewScanner(strings.NewReader(string(bytes)))
	out = bufio.NewWriter(os.Stdout)
	buf := make([]byte, 1<<20)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	n := nextInt()
	idx := make([]int, n)
	x, y := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		idx[i] = i
		x[i], y[i] = nextInt(), nextInt()
	}
	perm := permute(idx)
	sum := 0.0
	for _, p := range perm {
		for i := 1; i < n; i++ {
			xd := x[p[i]] - x[p[i-1]]
			yd := y[p[i]] - y[p[i-1]]
			d2 := xd*xd + yd*yd
			sum += math.Sqrt(float64(d2))
		}
	}
	avg := sum / float64(len(perm))

	fmt.Fprintln(out, avg)
}

func permute(nums []int) [][]int {
	ret := make([][]int, 0, factorial(len(nums)))
	ret = append(ret, append([]int{}, nums...))

	n := len(nums)
	p := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		p[i] = i
	}
	for i := 1; i < n; {
		p[i]--
		j := 0
		if i%2 == 1 {
			j = p[i]
		}

		nums[i], nums[j] = nums[j], nums[i]
		ret = append(ret, append([]int{}, nums...))
		for i = 1; p[i] == 0; i++ {
			p[i] = i
		}
	}
	return ret
}

func factorial(n int) int {
	ret := 1
	for i := 2; i <= n; i++ {
		ret *= i
	}
	return ret
}

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func intMin(a, b int) int {
	if a > b {
		return b
	}
	return a
}
func intMax(a, b int) int {
	if a > b {
		return a
	}
	return b
}
