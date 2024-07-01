package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

var n int
var s string

func main() {
	fmt.Scan(&n)
	s = read()
	rs := []rune(s)
	max := 0
	for i := 0; i < n-1; i++ {
		z := Zalgo(rs[i:])
		m, id := Maxid(z[1:])
		if id+1 < n-m && max < m {
			max = m
		}
	}
	fmt.Println(max)
}

func Maxid(as []int) (int, int) {
	m := as[0]
	id := 0
	if len(as) == 1 {
		return m, id
	}
	for i, a := range as {
		if a > m {
			m = a
			id = i
		}
	}
	return m, id
}

func Zalgo(rs []rune) []int {
	n := len(rs)
	Z := make([]int, n)
	Z[0] = n
	i := 1
	j := 0
	for i < n {
		for i+j < n && rs[j] == rs[i+j] {
			j++
		}
		Z[i] = j
		if j == 0 {
			i++
			continue
		}
		k := 1
		for k < j && k+Z[k] < j {
			Z[i+k] = Z[k]
			k++
		}
		i += k
		j -= k
	}
	return Z
}
