package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var x, n, near int
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &x, &n)

	if n == 0 {
		fmt.Println(x)
		return
	}
	sp := make([]string, n)
	ip := make([]int, n)
	scanner.Scan()
	sp = strings.Split(scanner.Text(), " ")
	for i, v := range sp {
		ip[i], _ = strconv.Atoi(v)
	}
	sort.Ints(ip)
	j := 0
	for i := 0; ; i++ {
		if ip[j] != i {
			if abs(x-i) < abs(x-near) {
				near = i
			}
		} else {
			if j == n-1 {
				break
			}
			j++
		}
	}
	fmt.Println(near)
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
