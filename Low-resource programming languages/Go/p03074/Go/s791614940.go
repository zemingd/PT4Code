package main

import (
	"fmt"
	"strconv"
	"strings"
)

func calc_seq(xs []int) []int {
	seq := []int{}
	count := 1
	for i := 0; i < len(xs) - 1; i++ {
		if xs[i] == xs[i+1] {
			count++
		} else {
			seq = append(seq, count)
			count = 1
		}
	}
	seq = append(seq, count)
	return seq
}

func form_seq(xs []int) []int {
	seq := calc_seq(xs)
	if xs[0] == 0 {
		seq = append([]int{0}, seq...)
	}
	if len(seq) % 2 == 0 {
		seq = append(seq, 0)
	}
	return seq
}

func sum(xs []int, i0, i1 int) int {
	val := 0
	for i := i0; i <= i1; i++ {
		val += xs[i]
	}
	return val
}

func main() {
	var s1 string
	fmt.Scan(&s1)
	n, _ := strconv.Atoi(s1)

	var s2 string
	fmt.Scan(&s2)
	k, _ := strconv.Atoi(s2)

	var s3 string
	fmt.Scan(&s3)
	ss := strings.Split(s3, "")
	xs_length := len(ss)
	xs := make([]int, xs_length)
	for i, s := range ss {
		xs[i], _ = strconv.Atoi(s)
	}

	seq := form_seq(xs)
	m := len(seq)
	i := 1
	if i + 2*k > m {
		fmt.Print(n)
		return
	}
	val := sum(seq, i-1, i-1 + 2*k)
	biggest := val
	i += 2
	for i + 2*k <= m {
		val += sum(seq, i-1+2*k-1, i-1+2*k) - sum(seq, i-1-2, i-1-1)
		if biggest < val {
			biggest = val
		}
		i += 2
	}
	fmt.Print(biggest)
}