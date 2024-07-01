package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	scanner = bufio.NewScanner(os.Stdin)
	w       = bufio.NewWriter(os.Stdout)
)

func readInt() (read int) {
	scanner.Scan()
	read, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return
}

func main() {
	scanner.Split(bufio.ScanWords)
	defer w.Flush()

	n := readInt()
	k := readInt()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = readInt()
	}

	for i := 0; i < k; i++ {
		next := make([]int, n)
		for j := 0; j < n; j++ {
			for h := 0; h < a[j]+1; h++ {
				if h == 0 {
					next[j]++
				} else {
					if j-h >= 0 {
						next[j-h]++
					}
					if j+h < n {
						next[j+h]++
					}
				}
			}
		}
		a = next
	}

	fmt.Fprintln(w, strings.Trim(fmt.Sprint(a), "[]"))
}
