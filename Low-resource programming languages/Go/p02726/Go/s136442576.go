package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(Scanner())
	x, _ := strconv.Atoi(Scanner())
	y, _ := strconv.Atoi(Scanner())
	x--
	y--
	ans := make([]int, n-1)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			d := smaller(j-i, abs(x-i)+abs(y-j)+1)
			ans[d-1]++
		}
	}
	for i := 0; i < n-1; i++ {
		fmt.Println(ans[i])
	}
}
func abs(x int) int {
	if x < 0 {
		return -x
	} else {
		return x
	}
}
func smaller(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}
