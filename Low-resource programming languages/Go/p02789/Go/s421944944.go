package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var N int
	fmt.Scan(&N)
	P := make([]int, N)
	sc.Split(bufio.ScanWords)

	ans := 0
	flug := true
	min := N
	point := 0

	// ここにそもそも判定する処理を入れる
	for i := 0; i < N; i++ {

		flug = true
		sc.Scan()
		P[i], _ = strconv.Atoi(sc.Text())

		if P[i] > min {
			flug = false
		} else {
			for j := point; j < i; j++ {
				if P[i] > P[j] {
					min = P[j]
					point = j
					flug = false
					break
				}
			}
		}
		if min == 1 {
			break
		}
		if flug {
			ans += 1
		}
	}

	fmt.Println(ans)
}