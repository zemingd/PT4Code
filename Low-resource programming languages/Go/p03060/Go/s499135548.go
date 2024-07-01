package main

import (
	"fmt"
	"sort"
)

var (
	priceList []int
)

func main() {
	var n int

	fmt.Scanf("%d", &n)

	gems := make([]Gem, n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &gems[i].Value)
	}

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &gems[i].Cost)
	}

	X := 0
	Y := 0

	// 再帰での探索
	buy(n-1, gems, X, Y)

	sort.Sort(sort.Reverse(sort.IntSlice(priceList)))

	fmt.Println(priceList[0])

}

type Gem struct {
	Value int
	Cost  int
}

func buy(now int, gems []Gem, X int, Y int) {
	if now < 0 {
		priceList = append(priceList, X-Y)
	} else {
		// now番目を買わない
		buy(now-1, gems, X, Y)

		// now番目を買う
		X += gems[now].Value
		Y += gems[now].Cost
		buy(now-1, gems, X, Y)
	}
}
