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
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()

	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = nextInt()
	}
	sort.Slice(p, func(i, j int) bool { return p[i] < p[j] })

	r := 0
	for i := 0; i < k; i++ {
		r += p[i]
	}
	fmt.Println(r)

}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
