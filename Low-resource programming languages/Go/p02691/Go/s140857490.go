package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var t string
	var s = bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)

	if s.Scan() {
		t = s.Text()
	}

	N, err := strconv.Atoi(t)
	if err != nil {
		return
	}

	H := map[int]int{}
	// j-i = Ai + Aj
	// Ai +i = j-Aj
	L := map[int]int{}
	R := map[int]int{}
	for i := 1; i <= N; i++ {
		if s.Scan() {
			t = s.Text()
		}

		d, err := strconv.Atoi(t)
		if err != nil {
			return
		}

		H[i] = d
		L[d+i]++
		R[i-d]++
	}

	count := 0
	fmt.Println(L)
	fmt.Println(R)
	for i := range L {
		if _, ok := R[i]; ok {
			count = L[i] + R[i]
		}
	}
	fmt.Println(count)

}
