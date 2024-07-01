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
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	var A [3][3]int
	for i := 0; i < 3; i++ {
		A[i][0] = nextInt()
		A[i][1] = nextInt()
		A[i][2] = nextInt()
	}

	N := nextInt()
	for i := 0; i < N; i++ {
		b := nextInt()
		for j := 0; j < 3; j++ {
			for k := 0; k < 3; k++ {
				if A[j][k] == b {
					A[j][k] = 0
				}
			}
		}
	}
	bingo := false
	for i := 0; i < 3; i++ {
		if A[i][0] == A[i][1] && A[i][1] == A[i][2] {
			bingo = true
		}
		if A[0][i] == A[1][i] && A[1][i] == A[2][i] {
			bingo = true
		}
	}
	if A[0][0] == A[1][1] && A[1][1] == A[2][2] {
		bingo = true
	}
	if A[0][2] == A[1][1] && A[1][1] == A[2][0] {
		bingo = true
	}

	if bingo {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
