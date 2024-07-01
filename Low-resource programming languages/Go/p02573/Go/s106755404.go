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

func contains(a []int, x int) bool {
	for _, e := range a {
		if e == x {
			return true
		}
	}
	return false
}

func pop(q []int) (int, []int) {
	return q[0], q[1:]
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

	for i := 0; i < m; i++ {
		a, b := NextInt()-1, NextInt()-1
		a, b = sort(a, b)
		// aの所属グループにbのメンバーを所属させる
		belong := belongings[a]
		// bの所属メンバーぶん人数増える
		groups[belong] += groups[b]
		oldmembers := members[b]
		members[belong] = append(members[belong], members[b]...)
		groups[b] = 0
		members[b] = []int{}
		// 旧メンバーの所属先をaの所属先に更新
		for _, member := range oldmembers {
			belongings[member] = belong
		}
	}
	var ans int
	for i := 0; i < n; i++ {
		ans = max(ans, groups[i])
	}
	fmt.Println(ans)
}
