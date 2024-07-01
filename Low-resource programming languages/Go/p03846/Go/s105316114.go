package main

import "fmt"

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func two_entries_unless_zero(m map[int]int) bool {
	for k, v := range m {
		if k != 0 && v != 2 {
			return false
		}
	}
	return true
}

func same_parity(m map[int]int) bool {
	parity := make([]int, 0)
	for k := range m {
		parity = append(parity, k%2)
	}
	for i := 0; i < len(parity)-1; i++ {
		if parity[i] != parity[i+1] {
			return false
		}
	}
	return true
}

func pow(a, b int) int {
	if b == 0 {
		return 1
	}
	return pow(a, b-1) * a % 1000000007
}

func solve(m map[int]int) int {
	l := len(m)
	if m[0] > 0 {
		return pow(2, l-1)
	}
	return pow(2, l)
}

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}

	counter := make(map[int]int)
	for _, a := range as {
		counter[a]++
	}

	if counter[0] > 1 || !two_entries_unless_zero(counter) || !same_parity(counter) {
		fmt.Println(0)
	} else {
		fmt.Println(solve(counter))
	}
}
