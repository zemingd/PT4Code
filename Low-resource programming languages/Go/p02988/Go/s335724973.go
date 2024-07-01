package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var isProduct = false

var dp [][][]bool
var N, K, M int
var count int

func dfs(a, b, c int) {
	if a < b && b < c && a < c {
		count++
	} else {
		if c < b && b < a && c < a {
			count++
		}
	}
}

func main() {
	nextReader = newScanner()
	N = nextInt()

	ns := nextInts(N)

	for i := 3; i < N; i++ {
		a := ns[i]
		b := ns[i]
		c := ns[i]

		dfs(a, b, c)
	}

}