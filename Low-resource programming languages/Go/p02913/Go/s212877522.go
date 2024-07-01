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
	for l1 := 0; l1 < n-1; l1++ {
		z := Zalgo(rs[l1:])
		for l2 := l1+1; l2 < n; l2++ {
			length := z[l2-l1]
			if l1 + length <= l2 && l2 <= n-length+1 && max < length {
				max = length
			}
		}
	}
	fmt.Println(max)
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
