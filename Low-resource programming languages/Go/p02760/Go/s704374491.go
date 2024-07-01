package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var wtr = bufio.NewWriter(os.Stdout)
	var scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanLines)
	A := [][]int{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}
	B := [][]bool{{false, false, false}, {false, false, false}, {false, false, false}}
	for i := 0; i < 3; i++ {
		if scanner.Scan() {
			str := scanner.Text()
			cols := strings.Split(str, " ")
			A[i][0], _ = strconv.Atoi(cols[0])
			A[i][1], _ = strconv.Atoi(cols[1])
			A[i][2], _ = strconv.Atoi(cols[2])
		}
	}
	var N int
	if scanner.Scan() {
		str := scanner.Text()
		N, _ = strconv.Atoi(str)
	}
	for r := 0; r < N; r++ {
		if scanner.Scan() {
			str := scanner.Text()
			a, _ := strconv.Atoi(str)
			for i := 0; i < 3; i++ {
				for j := 0; j < 3; j++ {
					if A[i][j] == a {
						B[i][j] = true
					}
				}
			}
		}
	}

	ans := "No"
	for p := 0; p < 3; p++ {
		if (B[p][0] && B[p][1] && B[p][2]) || (B[0][p] && B[1][p] && B[2][p]) {
			ans = "Yes"
			break
		}
	}
	if (B[0][0] && B[1][1] && B[2][2]) || (B[0][2] && B[1][1] && B[2][0]) {
		ans = "Yes"
	}

	fmt.Fprintln(wtr, ans)
	_ = wtr.Flush()
}
