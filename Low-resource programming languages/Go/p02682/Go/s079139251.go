package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := newScanner()
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	b, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	c, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	k, _ := strconv.Atoi(sc.Text())

	ans := solve(a, b, c, k)
	fmt.Println(ans)
}

func solve(a, b, c, k int) (ans int) {
	for i := 0; i < k; i++ {
		if i < a {
			ans++
		} else if b <= i && i < c {
			ans--
		}
	}
	return ans
}

func newScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
	return sc
}
