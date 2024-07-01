package main

import "fmt"

var friends map[int]([]int)
var friend map[int]bool
var ans int

func main() {
	friends = make(map[int]([]int))
	friend = make(map[int]bool)
	sss := make(map[int]int)
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	for i := 1; i <= n; i++ {
		sss[i] = 1
	}
	for i := 0; i < m; i++ {
		var t1, t2 int
		fmt.Scanf("%d %d", &t1, &t2)
		friends[t1] = append(friends[t1], t2)
		friends[t2] = append(friends[t2], t1)
	}

	for i := 0; i < m; i++ {
		for _, j := range friends[i] {
			if !friend[j] {
				ans--
				friend[j] = true
				delete(friends, j)
				sss[i] += sss[j]
			}
		}
	}

	var aans int
	for _, i := range sss {
		if i > aans {
			aans = i
		}
	}
	fmt.Println(aans)
}
