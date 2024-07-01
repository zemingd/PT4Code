package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	slice := strings.Split(nextLine(), "")

	count := make([]int, n+1)

	count[0] = 0

	for i := 0; i < n; i++ {
		count[i+1] = count[i]
		if slice[i] == "W" {
			count[i+1]++
		}
	}

	// fmt.Println(count)

	ans := n
	for i := 1; i < n+1; i++ {
		ans = min(ans, count[i-1]+n-i-(count[n]-count[i]))
	}

	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
