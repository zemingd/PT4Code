package main

import "fmt"

func main() {
	var max int
	fmt.Scanln(&max)

	ns := make([]int, 0)
	ns = dfs(0, max, ns)

	cnt := 0
	for _, n := range ns {
		if is753(n) {
			cnt += 1
		}
	}

	fmt.Println(cnt)
}

func dfs(x, max int, ns []int) []int {
	if x > max {
		return ns
	}
	ns = append(ns, x)
	ns = dfs(10*x+3, max, ns)
	ns = dfs(10*x+5, max, ns)
	return dfs(10*x+7, max, ns)
}

func is753(x int) bool {
	ms := make([]int, 9)
	for x > 0 {
		d := x % 10
		ms[d] += 1
		x /= 10
	}
	return ms[3] > 0 && ms[5] > 0 && ms[7] > 0
}
