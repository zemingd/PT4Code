package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := scanInt()
	k := scanInt()
	ans := n % k
	if ans > k-ans {
		ans = k - ans
	}
	fmt.Println(ans)

}

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}
func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}
func main() {
	sc.Split(bufio.ScanWords)
	solve()
}
