package main

import (
	"fmt"
)

type Book struct {
	cost int
	values []int
}

func main() {
	var n, m, x int
	// var result int = 0
	fmt.Scanf("%d %d %d", &n, &m, &x)

	books := make([]Book, n)

	for i := 0; i < n; i++ {
		var cost int
		fmt.Scan(&cost)
		values := make([]int, m)
		for j := 0; j < m; j++ {
			fmt.Scan(&values[j])
		}
		books[i] = Book{ cost, values }
	}

	fmt.Printf("%d", backtrack(books, x, m));
}

func countFulfill(expect int, curSkill []int) int {
	count := 0
	for i := 0; i < len(curSkill); i++ {
		if curSkill[i] >= expect {
			count++
		}
	}
	return count
}

func addArray(a []int, b[]int) []int {
	c := make([]int, len(a))
	for i := 0; i < len(a); i++ {
		c[i] = a[i] + b[i]
	}
	return c
}

func backtrack(books []Book, expect int, skillNum int) int {
	return loop(books, expect, make([]int, skillNum), 0)
}

func loop(books []Book, expect int, curSkill []int, curCost int) int {
	// 既に満たしている場合をチェック
	var fullfillNum = countFulfill(expect, curSkill)
	if (fullfillNum == len(curSkill)) {
		return curCost
	}

	// 次の本がない場合
	if len(books) == 0 {
		return -1
	}

	cost1 := loop(books[1:], expect, addArray(curSkill, books[0].values), curCost + books[0].cost)
	cost2 := loop(books[1:], expect, curSkill, curCost);

	if cost1 == -1 {
		return cost2
	} else if cost2 ==  -1 {
		return cost1
	} else {
		if cost1 < cost2 {
			return cost1
		} else {
			return cost2
		}
	}
}
