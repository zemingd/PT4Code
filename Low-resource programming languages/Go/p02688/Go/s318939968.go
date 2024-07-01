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

	if s.Scan() {
		t = s.Text()
	}

	K, err := strconv.Atoi(t)
	if err != nil {
		return
	}

	m := map[int]int{}
	for i := 1; i <= N; i++ {
		m[i] = 0
	}

	for i := 1; i <= K; i++ {
		if s.Scan() {
			t = s.Text()
		}

		d, err := strconv.Atoi(t)
		if err != nil {
			return
		}

		for j := 1; j <= d; j++ {
			if s.Scan() {
				t = s.Text()
			}

			a, err := strconv.Atoi(t)
			if err != nil {
				return
			}
			m[a]++
		}
	}

	count := 0
	for i := 1; i <= N; i++ {
		if m[i] == 0 {
			count++
		}
	}
	fmt.Println(count)
}
