package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	seq := []int{}
	for i := 2; i >= 0; i-- {
		for range make([]struct{}, n) {
			var k int
			fmt.Scan(&k)
			seq = append(seq, k*10+i)
		}
	}
	sort.Ints(seq)

	var ans, i, j int
	for _, v := range seq {
		switch 'C' - v%10 {
		case 'A':
			i++
		case 'B':
			ans += i * (n - j)
		case 'C':
			j++
		}
	}
	fmt.Println(ans)
}
