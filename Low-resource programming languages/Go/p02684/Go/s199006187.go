package main

import "fmt"

func main() {
	var n, k int

	fmt.Scanf("%d %d", &n, &k)

	a := make([]int, n+1)
	for i := 1; i <= n; i++ {
		fmt.Scanf("%d", &a[i])
	}

	pos := 1
	memo := []int{1}
	var i, j, v int

	for i = 0; i < k; i++ {
		pos = a[pos]
		for j, v = range memo {
			if pos == v {
				goto outer
			}
		}
		memo = append(memo, pos)
	}
outer:

	if i == k {
		fmt.Println(pos)
	} else {
		k1 := k - j
		l := len(memo) - j
		mod := k1 % l
		fmt.Println(memo[j+mod])
	}
}
