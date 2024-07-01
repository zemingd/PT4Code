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
		val := make([]int, k)
		for j := 0; j < k; j++ {
			val[j] = a[point{j, i}]
		}
		fmt.Println(val)
		if checkBingo(val, b) {
			fmt.Println("Yes")
			return
		}
	}

	vald1 := make([]int, k)
	vald1[0] = a[point{0, 0}]
	vald1[1] = a[point{1, 1}]
	vald1[2] = a[point{2, 2}]
	if checkBingo(vald1, b) {
		fmt.Println("Yes")
		return
	}

	vald2 := make([]int, k)
	vald2[0] = a[point{2, 0}]
	vald2[1] = a[point{1, 1}]
	vald2[2] = a[point{0, 2}]
	if checkBingo(vald2, b) {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")
}
