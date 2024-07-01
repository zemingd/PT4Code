package main

import "fmt"

func main() {
	var n, m int
	var previous []int

	fmt.Scanf("%d %d", &n, &m)
	for tmp := 0; tmp < m; tmp++ {
		previous = append(previous, tmp)
	}

	for i := 0; i < n; i++ {
		var now []int
		var k int
		fmt.Scanf("%d", &k)
		for j := 0; j < k; j++ {
			var a int
			fmt.Scanf("%d", &a)
			now = append(now, a)
		}
		previous = Uniform(previous, now)
	}
	fmt.Println(len(previous))
}

func In(a int, list []int) bool {
	for _, b := range list {
		if b == a {
			return true
		}
	}
	return false
}
func Uniform(previous, now []int) []int {
	var res []int
	for _, i := range now {
		if In(i, previous) {
			res = append(res, i)
		}
	}
	return res
}