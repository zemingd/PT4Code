package main

import "fmt"

func del(ary []int, ary1 []int) []int {
	for i := range ary {
		for l := range ary1 {
			if ary[i] == ary1[l] {
				ary[i] = 0
			}
		}
	}
	return ary
}

func bingo(ary1 []int, ary2 []int, ary3 []int) string {
	for i := 0; i <= 3; i++ {
		if ary1[i] == ary2[i] && ary2[i] == ary3[i] {
			return "Yes"
		} else if ary1[i] == ary1[i+1] && ary1[i] == ary1[i+2] {
			return "Yes"
		} else if ary2[i] == ary2[i+1] && ary2[i] == ary2[i+2] {
			return "Yes"
		} else if ary3[i] == ary3[i+1] && ary3[i] == ary3[i+2] {
			return "Yes"
		} else if ary1[i] == ary2[i+1] && ary1[i] == ary3[i+2] {
			return "Yes"
		} else if ary1[i+2] == ary2[i+1] && ary1[i+2] == ary3[i] {
			return "Yes"
		} else {
			return "No"
		}
	}
	return "No"
}

func main() {
	ary1 := make([]int, 3)
	fmt.Scanf("%d %d %d", &ary1[0], &ary1[1], &ary1[2])
	ary2 := make([]int, 3)
	fmt.Scanf("%d %d %d", &ary2[0], &ary2[1], &ary2[2])
	ary3 := make([]int, 3)
	fmt.Scanf("%d %d %d", &ary3[0], &ary3[1], &ary3[2])
	var (
		n   int
		l   int
		ary []int
	)
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&l)
		ary = append(ary, l)
	}
	del(ary1, ary)
	del(ary2, ary)
	del(ary3, ary)
	fmt.Println(bingo(ary1, ary2, ary3))
}
