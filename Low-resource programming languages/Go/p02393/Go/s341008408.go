package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() (int, error) {
	sc.Scan()
	s := sc.Text()
	return strconv.Atoi(s)
}

func comp(a []int, p int) {
	if a[p+1] < a[p] {
		buf := a[p]
		a[p] = a[p+1]
		a[p+1] = buf
	}
}

func main() {
	sc.Split(bufio.ScanWords)

	ans := make([]int, 3)
	for i := 0; i < 3; i++ {
		s, _ := nextInt()
		ans[i] = s
	}

	comp(ans, 0)
	comp(ans, 1)
	comp(ans, 0)

	fmt.Printf("%d %d %d\n", ans[0], ans[1], ans[2])
}

