package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

//Util
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func minInt(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

//Main
var sc = bufio.NewScanner(os.Stdin)
var N, M, X int

const MAX = 12

func main() {
	sc.Split(bufio.ScanWords)
	N, M, X = nextInt(), nextInt(), nextInt()

	C := make([]int, N)
	var A [MAX][MAX]int

	for i := 0; i < N; i++ {
		C[i] = nextInt()
		for j := 0; j < M; j++ {
			A[i][j] = nextInt()
		}
	}

	L := 1
	for i := 1; i <= N; i++ {
		L *= 2
	}

	minv := -1
	for i := 0; i < L; i++ {
		cost := 0
		skills := make([]int, M)
		b := fmt.Sprintf("%012b", i)

		b = b[12-N:]

		for j := 0; j < N; j++ {
			//fmt.Println(string(b[j]))
			if string(b[j]) == "1" {
				cost += C[j]
				for k := 0; k < M; k++ {
					skills[k] += A[j][k]
				}
			}

		}

		//fmt.Println(b, skills)

		ok := true
		for j := 0; j < M; j++ {
			if skills[j] < X {
				ok = false
				break
			}
		}

		if ok {
			if minv == -1 {
				minv = cost
			} else {
				minv = minInt(minv, cost)
			}

		}

	}

	fmt.Println(minv)

}
