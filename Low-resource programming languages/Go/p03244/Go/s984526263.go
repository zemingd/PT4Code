package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	// odds... キー:元の数列の奇数番目に現れた数字 値:現れた回数
	odds, evens := make(map[int]int), make(map[int]int)

	for i := 1; i <= n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		if i%2 == 0 {
			evens[tmp]++
		} else {
			odds[tmp]++
		}
	}

	// FirstNumberは最頻値
	// Firstは最頻値の出現回数、Secondは2番目に頻出な数字の出現回数
	oddsFirstNumber, oddsFirst, oddsSecond := check(odds)
	evensFirstNumber, evensFirst, evensSecond := check(evens)

	if oddsFirstNumber == evensFirstNumber {
		if oddsSecond > evensSecond {
			fmt.Println(n - oddsSecond - evensFirst)
		} else {
			fmt.Println(n - oddsFirst - evensSecond)
		}
		return
	}
	fmt.Println(n - oddsFirst - evensFirst)
}

func check(m map[int]int) (firstNunber, first, second int) {
	for i, n := range m {
		switch {
		case n > first:
			first = n
			firstNunber = i
		case n > second:
			second = n
		}
	}
	return
}
