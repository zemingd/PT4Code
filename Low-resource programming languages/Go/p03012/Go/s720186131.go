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

	total := make([]int, n+1)
	for i := 1; i < n+1; i++ {
		sc.Scan()
		w, _ := strconv.Atoi(sc.Text())
		total[i] = w + total[i-1]
	}

	ans := 9999
	for t := 1; t < n; t++ {
		if a := abs(total[n] - total[t]*2); a < ans {
			ans = a
		}
	}
	fmt.Println(ans)
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
