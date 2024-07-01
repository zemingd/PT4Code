package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	a, b, m := nextInt(), nextInt(), nextInt()

	am := int(1e9)
	as := make([]int, a)
	for i := 0; i < a; i++ {
		as[i] = nextInt()
		am = min(am, as[i])
	}

	bm := int(1e9)
	bs := make([]int, b)
	for i := 0; i < b; i++ {
		bs[i] = nextInt()
		bm = min(bm, bs[i])
	}

	ans := am + bm
	for i := 0; i < m; i++ {
		x, y, c := nextInt()-1, nextInt()-1, nextInt()
		ans = min(ans, as[x]+bs[y]-c)
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
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
