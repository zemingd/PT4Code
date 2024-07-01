package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	n := intScanner()
	as := make([]int, n)
	for i := 0; i < n; i++ {
		as[i] = intScanner()
	}
	eo := [][]int{[]int{}, []int{}, []int{}, []int{}}
	for i := 0; i < n; i++ {
		if i%2 == 0 && as[i]%2 == 0 {
			eo[0] = append(eo[0], i)
		} else if i%2 == 1 && as[i]%2 == 1 {
			eo[0] = append(eo[0], i)
		} else if i%2 == 1 && as[i]%2 == 0 {
			eo[0] = append(eo[0], i)
		} else if i%2 == 0 && as[i]%2 == 1 {
			eo[0] = append(eo[0], i)
		}
	}
	ans := 0
	for i := 0; i < len(eo[0]); i++ {
		x := eo[0][i]
		for j := i + 1; j < len(eo[0]); j++ {
			y := eo[0][j]
			if y-x == as[y]+as[x] {
				ans++
			}
		}
	}
	for i := 0; i < len(eo[1]); i++ {
		x := eo[1][i]
		for j := i + 1; j < len(eo[1]); j++ {
			y := eo[1][j]
			if y-x == as[y]+as[x] {
				ans++
			}
		}
	}
	for i := 0; i < len(eo[2]); i++ {
		x := eo[2][i]
		for j := i + 1; j < len(eo[2]); j++ {
			y := eo[2][j]
			if y-x == as[y]+as[x] {
				ans++
			}
		}
	}
	for i := 0; i < len(eo[3]); i++ {
		x := eo[3][i]
		for j := i + 1; j < len(eo[3]); j++ {
			y := eo[3][j]
			if y-x == as[y]+as[x] {
				ans++
			}
		}
	}
	for i := 0; i < len(eo[0]); i++ {
		x := eo[0][i]
		for j := 0; j < len(eo[1]); j++ {
			y := eo[1][j]
			if abs(y-x) == as[y]+as[x] {
				ans++
			}
		}
	}
	for i := 0; i < len(eo[1]); i++ {
		x := eo[1][i]
		for j := 0; j < len(eo[2]); j++ {
			y := eo[2][j]
			if abs(y-x) == as[y]+as[x] {
				ans++
			}
		}
	}
	fmt.Println(ans)
}
func abs(x int) int {
	if x < 0 {
		return -x
	} else {
		return x
	}
}
