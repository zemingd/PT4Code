package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
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

func dfs(A []int) {
	if len(A) == n+1 {
		cnt := 0
		for i := 0; i < q; i++ {
			if A[b[i]]-A[a[i]] == c[i] {
				cnt += d[i]
			}
		}
		ans = int(math.Max(float64(ans), float64(cnt)))
		return
	}

	for l := A[len(A)-1]; l <= m; l++ {
		dfs(append(A, l))
	}
}

var n, m, q int
var ans int
var a, b, c, d []int

func main() {
	scanner.Split(bufio.ScanWords)
	defer w.Flush()

	n = readInt()
	m = readInt()
	q = readInt()

	for i := 0; i < q; i++ {
		a = append(a, readInt())
		b = append(b, readInt())
		c = append(c, readInt())
		d = append(d, readInt())
	}
	dfs([]int{1})

	fmt.Println(ans)
}