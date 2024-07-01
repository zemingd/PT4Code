package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	fixed := make([]int, n)
	m := 0
	var ans []int

	for i := 0; i < n; i++ {
		v := n - i
		ai := a[n-i-1]

		if ai == 0 {
			fixed[n-i-1] = 1
		} else {
			if m == 0 {
				ans = []int{v}
			} else {
				ans = append(ans, v)
			}
			m++
		}
	}

	fmt.Println(m)
	if m > 0 {
		fmt.Println(strings.Trim(strings.Replace(fmt.Sprint(ans), " ", " ", -1), "[]"))
	}
}
