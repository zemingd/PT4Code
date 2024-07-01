package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, m int
	fmt.Scan(&n)
	fmt.Scan(&m)

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	min := 0
	max := n
	for i := 0; i < m; i++ {
		scanner.Scan()
		l, _ := strconv.Atoi(scanner.Text())
		scanner.Scan()
		r, _ := strconv.Atoi(scanner.Text())

		if l > min {
			min = l
		}
		if r < max {
			max = r
		}
	}

	ret := max - min + 1
	if ret < 0 {
		ret = 0
	}
	fmt.Println(ret)
}
