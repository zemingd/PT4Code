package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)
	fmt.Print(count(k))
}

func slicing(k int) []int {
	var s []int
	for k > 0 {
		i := k % 10
		s = append(s, i)
		k = k / 10
	}
	return s
}
func count(c int) int {
	count := 0
	i := 1
	for count < c {
		if runrun(slicing(i)) {
			count++
		}
		i++
	}
	return i - 1
}
func runrun(t []int) bool {
	before := t[0]
	if len(t) == 1 {
		return true
	}
	for _, i := range t {
		if before == i || before+1 == i || before-1 == i || (before == 9 && i == 0) || (before == 0 && i == 9) {
			before = i
		} else {
			return false
		}
	}
	return true
}
