package main

import "fmt"

func main() {

	// mainA()
	mainB()

}

func mainA() {
	var a, b, res int64
	fmt.Scan(&a, &b)
	res = solveA(a, b)
	fmt.Println(res)
}

func solveA(a int64, b int64) int64 {
	var res int64
	if b%a == 0 {
		res = a + b
	} else {
		res = b - a
	}

	return res
}

func mainB() {
	var n, m int
	fmt.Scan(&n, &m)

	var kA []int
	var aA [][]int

	kA = make([]int, n)
	aA = make([][]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&kA[i])
		aA[i] = make([]int, 0)
		for j := 0; j < kA[i]; j++ {
			var b int
			fmt.Scan(&b)
			aA[i] = append(aA[i], b)
		}
	}

	var res = solveB(n, m, kA, aA)

	fmt.Println(res)
}

func solveB(n int, m int, kA []int, aA [][]int) int {
	var mA = make([]int, m)
	for i := 0; i < n; i++ {
		for j := 0; j < kA[i]; j++ {
			var num = aA[i][j]
			mA[num-1]++
		}
	}
	var res = 0
	for i := 0; i < m; i++ {
		if mA[i] >= n {
			res++
		}
	}
	return res
}
