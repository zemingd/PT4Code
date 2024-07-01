package main

import (
	"fmt"
	"math"
)

func main() {
	board := make([][]int, 3)
	board[0] = ints(3)
	board[1] = ints(3)
	board[2] = ints(3)
	n := scInt()
	blist := ints(n)

	checkedBoard := [][]bool{{false, false, false}, {false, false, false, false}, {false, false, false}}

	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			for k := 0; k < n; k++ {
				if board[i][j] == blist[k] {
					checkedBoard[i][j] = true
				}
			}
		}
	}
	ret := "No"

	if checkedBoard[0][0] && checkedBoard[0][1] && checkedBoard[0][2] {
		ret = "Yes"
	} else if checkedBoard[1][0] && checkedBoard[1][1] && checkedBoard[1][2] {
		ret = "Yes"
	} else if checkedBoard[2][0] && checkedBoard[2][1] && checkedBoard[2][2] {
		ret = "Yes"
	} else if checkedBoard[0][0] && checkedBoard[1][0] && checkedBoard[2][0] {
		ret = "Yes"
	} else if checkedBoard[0][1] && checkedBoard[1][1] && checkedBoard[2][1] {
		ret = "Yes"
	} else if checkedBoard[0][2] && checkedBoard[1][2] && checkedBoard[2][2] {
		ret = "Yes"
	} else if checkedBoard[0][0] && checkedBoard[1][1] && checkedBoard[2][2] {
		ret = "Yes"
	} else if checkedBoard[0][2] && checkedBoard[1][1] && checkedBoard[2][0] {
		ret = "Yes"
	}
	fmt.Println(ret)
}

func scStr() string {
	var s string
	fmt.Scan(&s)
	return s
}

func scInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func scInt2() (int, int) {
	var x, y int
	fmt.Scan(&x, &y)
	return x, y
}

func scInt3() (int, int, int) {
	var x, y, z int
	fmt.Scan(&x, &y, &z)
	return x, y, z
}

func ints(n int) (slice []int) {
	slice = make([]int, n)
	for i := range slice {
		fmt.Scan(&slice[i])
	}
	return slice
}

func sum(slice []int) (sum int) {
	sum = 0
	for i := range slice {
		sum += slice[i]
	}
	return
}

func unique(strs []string) (unique []string) {
	m := map[string]bool{}
	for _, v := range strs {
		if !m[v] {
			m[v] = true
			unique = append(unique, v)
		}
	}
	return unique
}

func min(x, y int) int {
	if x > y {
		return y
	}
	return x
}

func powi(x, pow int) int {
	return int(math.Pow(float64(x), float64(pow)))
}
