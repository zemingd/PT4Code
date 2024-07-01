package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	pos := 0
	for i, e := range a {
		if e == 1 {
			pos = i
			break
		}
	}
	ans := 0
	i := pos + k
	for ; i < n; i += k - 1 {
		ans++
	}
	i = pos
	for ; i >= 0; i -= k - 1 {
		ans++
	}
	fmt.Println(ans)
}
