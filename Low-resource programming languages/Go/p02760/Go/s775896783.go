package main

import "fmt"

type point struct {
	x int
	y int
}

const k = 3

func checkBingo(val []int, b map[int]bool) bool {
	cnt := 0
	for _, v := range val {
		if b[v] {
			cnt++
			if cnt == 3 {
				return true
			}
		}
	}
	return false
}

func main() {
	a := make(map[point]int)
	for i := 0; i < k; i++ {
		for j := 0; j < k; j++ {
			var tmp int
			fmt.Scan(&tmp)
			a[point{j, i}] = tmp
		}
	}

	var n int
	fmt.Scan(&n)
	b := make(map[int]bool, n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		b[tmp] = true
	}

	for i := 0; i < k; i++ {
		valr := make([]int, k)
		valc := make([]int, k)
		for j := 0; j < k; j++ {
			valr[j] = a[point{j, i}]
			valc[j] = a[point{i, j}]
		}
		if checkBingo(valr, b) || checkBingo(valc, b) {
			fmt.Println("Yes")
			return
		}
	}

	vald1 := make([]int, k)
	vald2 := make([]int, k)
	for i := 0; i < k; i++ {
		vald1[i] = a[point{i, i}]
		vald2[i] = a[point{k - 1 - i, i}]
	}
	if checkBingo(vald1, b) || checkBingo(vald2, b) {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")
}
