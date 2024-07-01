package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var x, n, ans int
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &x, &n)

	sp := make([]string, n)
	ip := make([]int, n)
	a := make([]bool, 102) // 0 ~ 101
	scanner.Scan()
	sp = strings.Split(scanner.Text(), " ")
	for i, v := range sp {
		ip[i], _ = strconv.Atoi(v)
		a[ip[i]] = true
	}
	fmt.Fprintln(os.Stderr, a, ip)

	for i := 0; i < 101; i++ {
		if x-i >= 0 && !a[x-i] {
			ans = x - i
			break
		} else if x+i < 103 && !a[x+i] {
			ans = x + i
			break
		}
	}
	fmt.Println(ans)
}
