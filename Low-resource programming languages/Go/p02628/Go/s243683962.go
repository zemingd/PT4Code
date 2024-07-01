package main

import (
	"bufio"
	"os"
	"sort"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

//func nextString() string {
//	sc.Scan()
//	return sc.Text()
//}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()
	k := nextInt()
	p := make([]int, n, n)

	for i := 0; i < n; i++ {
		p[i] = nextInt()
	}

	sort.Ints(p)

	min := 0
	for i := 0; i < k; i++ {
		min += p[i]
	}

	fmt.Println(min)
}
