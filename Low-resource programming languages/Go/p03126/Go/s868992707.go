package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var n, m, ans int
	var k [30]int
	var a [30][30]int
	fmt.Scanf("%d %d", &n, &m)
	for i := 0; i < n; i++ {
		k[i] = nextInt()
		for j := 0; j < k[i]; j++ {
			a[i][j] = nextInt()
		}
	}

	f := map[int]int{}
	for i := 0; i < m; i++ {
		f[i+1] = 0
	}

	for i := 0; i < n; i++ {
		for j := 0; j < k[i]; j++ {
			b := f[a[i][j]]
			f[a[i][j]] = b + 1
		}
	}

	for i := 0; i < m; i++ {
		if f[i+1] == n {
			ans++
		}
	}

	fmt.Println(ans)

}
