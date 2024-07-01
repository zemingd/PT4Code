package main

import (
	"bufio"
	"fmt"
	"math"
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
	for i := 1; i <= N; i++ {
		if s.Scan() {
			t = s.Text()
		}

		d, err := strconv.Atoi(t)
		if err != nil {
			return
		}

		H[i] = d
	}

	//math.Abs
	count := 0
	for i := 1; i <= N; i++ {
		for j := i + 1; j <= N; j++ {
			if i == j {
				continue
			}
			// fmt.Println(i, j, H[i], H[j])
			// fmt.Println(math.Abs(float64(i-j)) == float64(H[i]+H[j]))
			if math.Abs(float64(i-j)) == float64(H[i]+H[j]) {
				count++
			}
		}
	}
	fmt.Println(count)

}
