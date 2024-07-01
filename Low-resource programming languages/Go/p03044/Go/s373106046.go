package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	uni = make([]int, n)
	for i := range uni {
		uni[i] = -1
	}
	for i := 0; i < n-1; i++ {
		var u, v, w int
		fmt.Scan(&u, &v, &w)
		if w%2 == 0 {
			connect(u-1, v-1)
		}
	}
	mi := -1
	for i, v := range uni {
		if v < 0 {
			mi = i
			break
		}
	}
	for i, v := range uni {
		if mi == i || v == mi {
			fmt.Println(0)
		} else {
			fmt.Println(1)
		}
	}
}

var uni []int

func root(a int) int {
	if uni[a] < 0 {
		return a
	}
	uni[a] = root(uni[a])
	return uni[a]
}

func connect(a, b int) bool {
	a = root(a)
	b = root(b)
	if a == b {
		return false
	}
	if uni[a] > uni[b] {
		a, b = b, a
	}
	uni[a] = uni[a] + uni[b]
	uni[b] = a
	return true
}

func isConnect(a, b int) bool {
	return root(a) == root(b)
}

func size(a int) int {
	return -uni[root(a)]
}
