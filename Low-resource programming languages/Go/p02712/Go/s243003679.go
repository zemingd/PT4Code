package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := scanInt()
	var sum int64
	sum = 0
	for i := 0; i < n; i++ {
		if i%3 != 0 && i%5 != 0 {
			sum += int64(i)
		}
	}
	fmt.Println(sum)
	return
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
func pow(n int, m int) int {
	ans := 1
	for i := 0; i < m; i++ {
		ans *= n
	}
	return ans
}
func main() {
	sc.Split(bufio.ScanWords)
	solve()
}
