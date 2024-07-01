package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	N, _ := strconv.Atoi(s)

	if sc.Scan() {
		s = sc.Text()
	}
	S := s

	result := N

	var n int
	for i := 0; i < N; i++ {

		if i == 0 {
			for j := 1; j < N; j++ {
				if S[j] == 'E' {
					n++
				}
			}

			if result > n {
				result = n
			}

			if S[i] == 'W' {
				n++
			}

		} else {
			if S[i] == 'E' {
				n--
			}

			if result > n {
				result = n
			}

			if S[i] == 'W' {
				n++
			}
		}
	}

	/*
		for i := 0; i < N; i++ {
			var n int

			for j := 0; j < N; j++ {
				if i > j {
					if S[j] == 'W' {
						n++
					}
				} else if i < j {
					if S[j] == 'E' {
						n++
					}
				}
			}

			if result > n {
				result = n
			}
		}
	*/

	fmt.Println(result)
}
