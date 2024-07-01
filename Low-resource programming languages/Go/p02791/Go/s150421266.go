package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	p := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		p[i], _ = strconv.Atoi(sc.Text())
	}

	min := n
	count := 0
	for i := 0; i < n; i++ {
		if min >= p[i] {
			count++
			min = p[i]
		}
	}
	fmt.Println(count)
}
