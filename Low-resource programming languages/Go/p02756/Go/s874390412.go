package main

import (
	"fmt"
	"io"
	"os"
	"runtime"
)

func run(input io.Reader, output io.Writer) int {
	var s string
	fmt.Scanf("%s\n", &s)
	var q int
	fmt.Scanf("%d\n", &q)

	head := true
	left := make([]byte, 0)
	right := make([]byte, 0)
	for i := 0; i < q; i++ {
		var t int
		fmt.Scanf("%d", &t)

		if t == 1 {
			head = !head
			if runtime.GOOS == "windows" {
				fmt.Scanf("\n")
			}
		} else {
			var f int
			var c byte
			fmt.Scanf("%d %c\n", &f, &c)
			if (head && f == 1) || (!head && f == 2) {
				left = append(left, c)
			} else {
				right = append(right, c)
			}
		}
	}

	var ans []byte
	S := []byte(s)
	if head {
		for l, r := 0, len(left)-1; l < r; l, r = l+1, r-1 {
			left[l], left[r] = left[r], left[l]
		}
		ans = append(ans, left...)
		ans = append(ans, S...)
		ans = append(ans, right...)
		fmt.Printf("%s\n", string(ans))
	} else {
		for l, r := 0, len(right)-1; l < r; l, r = l+1, r-1 {
			right[l], right[r] = right[r], right[l]
		}
		for l, r := 0, len(S)-1; l < r; l, r = l+1, r-1 {
			S[l], S[r] = S[r], S[l]
		}
		ans = append(ans, right...)
		ans = append(ans, S...)
		ans = append(ans, left...)
		fmt.Printf("%s\n", string(ans))
	}
	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
