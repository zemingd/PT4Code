package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func NextStr() string {
	scanner.Scan()
	return scanner.Text()
}

func NextInt() int {
	i, _ := strconv.Atoi(NextStr())
	return i
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func sort(x, y int) (int, int) {
	if x > y {
		return y, x
	}
	return x, y
}

func main() {
	scanner.Split(bufio.ScanWords)
	n, m := NextInt(), NextInt()
	groups := make([]int, n)
	belongings := make([]int, n)
	members := make([][]int, n)
	// 初期は各メンバーは一人グループ
	for i := 0; i < n; i++ {
		groups[i] = 1
		belongings[i] = i
		members[i] = []int{i}
	}

	var ans int

	for i := 0; i < m; i++ {
		a, b := NextInt()-1, NextInt()-1
		a, b = sort(a, b)
		belong := belongings[a]
		// aの所属グループにbのメンバーを所属させる
		groups[belong] += groups[b]
		target := belongings[b]
		if target != a {
			oldmembers := members[target]
			members[belong] = append(members[belong], members[target]...)
			groups[target] = 0
			members[target] = []int{}
			// 旧メンバーの所属先をaの所属先に更新
			for _, member := range oldmembers {
				belongings[member] = belong
			}
			ans = max(ans, groups[belong])
		}
	}
	fmt.Println(ans)
}
