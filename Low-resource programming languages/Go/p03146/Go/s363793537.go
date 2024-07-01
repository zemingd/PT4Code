package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func getFloat() float64 {
	sc.Scan()
	n, _ := strconv.ParseFloat(sc.Text(), 64)
	return n
}

func sum(n []int) int {
	a := 0
	for _, v := range n {
		a += v
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	s := getInt()

	var a []int
	m := make(map[int]int, 1)
	var ans int
	a = append(a, s)
	for i := 1; i > 0; i++ {
		if a[i-1]%2 == 0 {
			a = append(a, a[i-1]/2)
			m[a[i]]++
		} else {
			a = append(a, (3*a[i-1])+1)
			m[a[i]]++
		}

		if m[a[i]] == 2 {
			ans = i
			i = -1
		}
	}
	fmt.Println(ans + 1)
}
