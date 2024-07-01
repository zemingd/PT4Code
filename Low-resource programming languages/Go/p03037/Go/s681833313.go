package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

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

	m := make(map[int]int, 0)
	for i := 0; i < M; i++ {
		for j := L[i]; j <= R[i]; j++ {
			m[j]++
		}
	}
	ans := 0
	for _, v := range m {
		if v == M {
			ans++
		}
	}
	fmt.Println(ans)
}
