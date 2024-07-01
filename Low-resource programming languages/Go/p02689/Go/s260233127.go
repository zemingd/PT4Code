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

	M, err := strconv.Atoi(t)
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

	G := map[int]int{}
	for i := 1; i <= N; i++ {
		G[i] = 0
	}

	for i := 1; i <= M; i++ {
		if s.Scan() {
			t = s.Text()
		}

		A, err := strconv.Atoi(t)
		if err != nil {
			return
		}

		if s.Scan() {
			t = s.Text()
		}

		B, err := strconv.Atoi(t)
		if err != nil {
			return
		}

		if A == B {
			continue
		}

		if H[A] < H[B] {
			G[A]--
		} else {
			G[B]--
		}
	}

	count := 0
	for i := 1; i <= N; i++ {
		if G[i] == 0 {
			count++
		}
	}
	fmt.Println(count)
}
