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

	sc.Scan()
	x, _ := strconv.Atoi(sc.Text())
	x--

	sc.Scan()
	y, _ := strconv.Atoi(sc.Text())
	y--

	d := make([][]int, n)
	for i := 0; i < n; i++ {
		d[i] = make([]int, n)
	}

	result := make([]int, n-1)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			result[min(j-i, abs(x-i)+abs(y-j)+1)-1]++
		}
	}

	w := bufio.NewWriter(os.Stdout)
	for _, r := range result {
		w.WriteString(fmt.Sprintf("%d\n", r))
	}
	w.Flush()
}

func abs(s int) int {
	if s < 0 {
		return -s
	}
	return s
}

func min(s ...int) int {
	minContent := s[0]
	for _, el := range s {
		if el < minContent {
			minContent = el
		}
	}
	return minContent
}
