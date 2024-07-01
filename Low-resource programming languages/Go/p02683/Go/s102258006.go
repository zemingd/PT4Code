package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func solve(isUse []bool, n, m, x int, c []int, skill [][]int) int {
	if len(isUse) == n {
		score := make([]int, m)
		price := 0
		for i := 0; i < n; i++ {
			if isUse[i] {
				price += c[i]
				for j := 0; j < m; j++ {
					score[j] += skill[i][j]
				}
			}
		}
		for i := 0; i < m; i++ {
			if score[i] < x {
				return -1
			}
		}
		return price
	}

	isUse = append(isUse, true)
	temp1 := solve(isUse, n, m, x, c, skill)
	isUse[len(isUse)-1] = false
	temp2 := solve(isUse, n, m, x, c, skill)
	if temp1 == -1 && temp2 == -1 {
		return -1
	}
	if temp1 == -1 {
		return temp2
	}
	if temp2 == -1 {
		return temp1
	}
	if temp1 > temp2 {
		return temp2
	} else {
		return temp1
	}

}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	m := nextInt()
	x := nextInt()

	c := make([]int, n)
	skill := make([][]int, n)
	for i := 0; i < n; i++ {
		c[i] = nextInt()
		skill[i] = make([]int, m)
		for j := 0; j < m; j++ {
			skill[i][j] = nextInt()
		}
	}

	isUse := make([]bool, 0, n)

	ans := solve(isUse, n, m, x, c, skill)

	fmt.Println(ans)
}
