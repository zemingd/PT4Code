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
	//scanner.Split(bufio.ScanLines)
	var K, N int
	if scanner.Scan() {
		str := scanner.Text()
		cols := strings.Split(str, " ")
		K, _ = strconv.Atoi(cols[0])
		N, _ = strconv.Atoi(cols[1])
	}
	_ = K
	A := make([]int, N)
	if scanner.Scan() {
		str := scanner.Text()
		cols := strings.Split(str, " ")
		for i := 0; i < N; i++ {
			A[i], _ = strconv.Atoi(cols[i])
		}
	}
	var tmp, max int
	max = 0
	for i := 0; i < N; i++ {
		if i == 0 {
			tmp = A[0] + (K - A[N-1])
		} else {
			tmp = A[i] - A[i-1]
		}
		//fmt.Println(tmp)
		if tmp > max {
			max = tmp
		}
	}

	fmt.Fprint(wtr, K-max)
	_ = wtr.Flush()
}
