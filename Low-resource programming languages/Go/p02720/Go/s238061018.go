package main

import (
	"bufio"
	"fmt"
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

	k := nextInt()

	l := []int{1, 2, 3, 4, 5, 6, 7, 8, 9}
	i, n := 0, 0
	for len(l) > 0 && i < k {
		n, l = l[0], l[1:]
		d := n % 10
		switch d {
		case 0:
			l = append(l, n*10+d, n*10+d+1)
		case 9:
			l = append(l, n*10+d-1, n*10+d)
		default:
			l = append(l, n*10+d-1, n*10+d, n*10+d+1)
		}
		i++
	}
	fmt.Fprintln(out, n)
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
func min(a ...int) int {
	ret := a[0]
	for i := 1; i < len(a); i++ {
		if a[i] < ret {
			ret = a[i]
		}
	}
	return ret
}
func max(a ...int) int {
	ret := a[0]
	for i := 1; i < len(a); i++ {
		if a[i] > ret {
			ret = a[i]
		}
	}
	return ret
}
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
