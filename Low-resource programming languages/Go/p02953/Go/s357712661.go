package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	h := make([]int, n)
	for i := 0; i < n; i++ {
		scanner.Scan()
		h[i], _ = strconv.Atoi(scanner.Text())
	}

	var max int
	for i := 0; i < n; i++ {
		if h[i]+1 < max {
			fmt.Println("No")
			return
		}

		if h[i] > max {
			max = h[i]
		}
	}

	fmt.Println("Yes")
}
