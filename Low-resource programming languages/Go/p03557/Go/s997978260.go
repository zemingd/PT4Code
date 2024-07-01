package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	a, b, c := nextInts(n), nextInts(n), nextInts(n)

	sort.Sort(sort.IntSlice(a))
	sort.Sort(sort.IntSlice(b))
	sort.Sort(sort.IntSlice(c))

	result := 0
	jmap := make(map[int]int, n)
	for i := 0; i < n; i++ {
		j := sort.Search(n, func(bi int) bool { return b[bi] > a[i] })
		if j == n {
			break
		}
		sum, ok := jmap[j]
		if ok {
			result += sum
			continue
		}
		for jj := j; jj < n; jj++ {
			k := sort.Search(n, func(ci int) bool { return c[ci] > b[jj] })
			if k == n {
				break
			}
			sum += n - k
		}
		jmap[j] = sum
		result += sum
	}

	fmt.Fprintln(out, result)

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
