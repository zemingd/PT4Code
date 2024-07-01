package main

import "fmt"

func main() {
	k, a := input()
	ans := run(k, a)
	output(ans)
}

func run(k int, a []int) int {
	town := 0
	trajectory := make(map[int]int)
	var begin, end int
	var ok bool
	var i int
	for i = 0; i < k; i++ {
		begin, ok = trajectory[town]
		if ok {
			end = i
			break
		}
		trajectory[town] = i
		town = a[town]
	}
	if i == k {
		return town + 1
	}
	t := (k - begin) % (end - begin)
	arr := make([]int, end-begin, end-begin)
	for i, v := range trajectory {
		if begin <= v && v < end {
			arr[v-begin] = i
		}
	}
	return arr[t] + 1
}

func firstAppearance(x int, t map[int]int) int {
	for i, v := range t {
		if x == v {
			return i
		}
	}
	return -1
}

func output(a int) {
	fmt.Println(a)
}

func input() (int, []int) {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int, n, n)
	var t int
	for i := range a {
		fmt.Scan(&t)
		a[i] = t - 1
	}
	return k, a
}
