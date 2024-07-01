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
	var n int
	scanner.Scan()
	n, _ = strconv.Atoi(scanner.Text())
	a := make([]int, n)
	scanner.Scan()
	args := strings.Split(scanner.Text(), " ")
	for i := 0; i < n; i++ {
		var j int
		j, _ = strconv.Atoi(args[i])
		a[i] = j
	}

	b := make([]int, n)
	for i := n - 1; i >= 0; i-- {
		j := (i + 1) * 2
		if j > n {
			b[i] = a[i]
		} else {
			if b[j-1]%2 == 0 {
				b[i] = b[j-1] + a[i]
			} else {
				b[i] = b[j-1] + (a[i]+1)%2
			}
		}
	}

	ans := make([]string, n)
	m := 0
	for i := 0; i < n; i++ {
		if b[i]%2 == 1 {
			ans[m] = fmt.Sprint(a[i])
			m++
		}
	}

	buf := strings.Join(ans, " ")

	fmt.Println(m)
	if m != 0 {
		fmt.Println(buf)
	}
}
