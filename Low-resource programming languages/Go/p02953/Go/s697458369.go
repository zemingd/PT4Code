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
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = nextInt(sc)
	}

    ok := true
	maxh := h[0]
	for i := 0; i < n-1; i++ {
		if h[i] > h[i+1] {
			// 今のマスの方が次のマスより背が高い
			if maxh >= h[i]-1 {
				h[i]--
				maxh = h[i]
			} else {
				ok = false
				break
			}
		}
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
