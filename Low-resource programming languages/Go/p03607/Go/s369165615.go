package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	// a := make(map[int]int, 0)
	a := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		a[i] = nextInt(sc)
	}
	sort.Ints(a)
	ans := 0
	prev, cnt := a[0], 1
	for i := 1; i < n; i++ {
		if a[i] == prev {
			cnt++
		} else {
			if cnt%2 != 0 {
				ans++
			}
			prev = a[i]
			cnt = 1
		}
		if i == n-1 && cnt%2 != 0 {
			ans++
		}
	}
	fmt.Println(ans)
}
