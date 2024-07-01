package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	k, _ := strconv.Atoi(sc.Text())

	hl := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		h, _ := strconv.Atoi(sc.Text())
		hl[i] = h
	}

	sort.Ints(hl)

	ans := 9999999999
	for i := 0; i <= n-k; i++ {
		if d := hl[i+k-1] - hl[i]; d < ans {
			ans = d
		}
	}

	fmt.Println(ans)
}
