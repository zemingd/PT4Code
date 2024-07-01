package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var N, M int
	M = 1
	for {
		if N <= 0 {
			break
		}
		if N >= 2 {
			M = M * N
		} else {
			M = M * 1
		}
		N = N - 2
	}
	sM := strconv.Itoa(M)
	sML := strings.Split(sM, "")
	ookisa := len(sML)
	for i := 1; i <= ookisa; i++ {
		if sML[ookisa-1] != "0" {
			break
		}
	}
	fmt.Println(i)
}
