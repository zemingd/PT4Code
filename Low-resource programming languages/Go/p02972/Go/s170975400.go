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
	buffer := make([]byte, 200000)
	scanner.Buffer(buffer, 10*200000)
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
	c := make([]bool, n)
	for i := n - 1; i >= 0; i-- {
		j := (i + 1) * 2
		if j > n {
			b[i] = a[i]
			c[i] = (a[i] == 1)
		} else {
			if b[j-1]%2 == 0 {
				b[i] = b[j-1] + a[i]
				c[i] = (a[i] == 1)
			} else {
				b[i] = b[j-1] + (a[i]+1)%2
				c[i] = (((a[i] + 1) % 2) == 1)
			}
		}
	}

	ans := make([]string, n)
	m := 0
	for i := 0; i < n; i++ {
		if c[i] {
			ans[m] = fmt.Sprint(i + 1)
			m++
		}
	}

	buf := strings.Join(ans, " ")

	fmt.Println(m)
	if m != 0 {
		fmt.Println(buf)
	}
}
