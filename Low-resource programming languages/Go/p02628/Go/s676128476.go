package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var (
		n, k, sum int
	)
	n, k = nextInt(), nextInt()
	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = nextInt()
	}
	sort.Ints(p)
	for j := 0; j < k; j++ {
		sum += p[j]
	}
	fmt.Print(sum)
}

func init() {
	const max = 1024
	var buf = make([]byte, max)
	sc.Buffer(buf, max)
	sc.Split(bufio.ScanWords)
	return
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
