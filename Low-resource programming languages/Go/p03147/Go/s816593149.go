package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	N := nextInt()
	var ans, a, b int
	a = nextInt()
	ans = a
	for i := 1; i < N; i++ {
		b = nextInt()
		ans += max(b-a, 0)
		a = b
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
