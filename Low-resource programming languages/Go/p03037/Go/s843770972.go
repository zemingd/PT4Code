package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}
func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	L := make([]int, M)
	R := make([]int, M)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanLines)
	for i := 0; i < M; i++ {
		sc.Scan()
		s := strings.Split(sc.Text(), " ")
		L[i], _ = strconv.Atoi(s[0])
		R[i], _ = strconv.Atoi(s[1])

	}
	lmax, rmin := L[0], R[0]
	for i := 1; i < M; i++ {
		lmax = max(lmax, L[i])
		rmin = min(rmin, R[i])
	}
	if rmin >= lmax {
		fmt.Println(rmin-lmax+1)
	} else {
		fmt.Println(0)
	}
}
