package main

import (
	"fmt"
	"math"
	"sort"
)

func main () {
	var n int
	fmt.Scan(&n)


	min := 1e10
	for i := 1; i * i <= n; i++ {
		if n % i == 0 {
			j := n / i
			max := math.Max(float64(calcDigit(i)), float64(calcDigit(j)))
			min = math.Min(max, min)
		}
	}
	fmt.Println(min)
}

// 桁数を返す
func calcDigit(n int) int {
	cnt := 0
	for n > 0 {
		cnt++
		n = n / 10
	}
	return cnt

}

// 約数列挙
func enumDivisions(n int) []int {
	var res []int
	for i := 1; i * i <= n; i++ {
		if n % i == 0 {
			res = append(res, i)

			// 重複しないならばiの相方である n/i もappend
			if n/i != i {
				res = append(res, n/i)
			}
		}
	}
	// 小さい順に並び替える
	sort.Ints(res)
	return res
}


