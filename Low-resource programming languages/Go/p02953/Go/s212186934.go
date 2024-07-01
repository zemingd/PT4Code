package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}
func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		h[i] = nextInt(sc)
	}
	ok := true
	prev := -1
	for i := 0; i < n; i++ {
		if prev > h[i] {
			ok = false
			break
		} else if prev < h[i] {
			h[i]--
		}
		prev = h[i]
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
