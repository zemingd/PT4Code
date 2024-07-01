package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)

	var n int
	fmt.Scan(&n)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = nextInt()
	}

	ans := 1
	for i := 1; i < n; i++ {
		pi := p[i]
		pp := p[:i]
		sort.Ints(pp)
		if pi <= pp[0] {
			ans++
		}
	}
	fmt.Println(ans)
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
