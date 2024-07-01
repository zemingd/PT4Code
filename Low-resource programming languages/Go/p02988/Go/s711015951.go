package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)


	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	psStr := strings.Split(scanner.Text(), " ")
	ps := make([]int, n)
	for i, v := range psStr {
		v2, _ := strconv.Atoi(v)
		ps[i] = v2
	}
	okCnt := 0
	for i := 0; i < n - 2; i++ {
		if eval(ps[i], ps[i+1], ps[i+2]) {
			okCnt++
		}
	}
	fmt.Println(okCnt)
}

func eval(p1, p2, p3 int) bool {
	if p1 < p2 && p2 <= p3 {
		return true
	}
	if p3 < p2 && p2 <= p1 {
		return true
	}
	return false
}