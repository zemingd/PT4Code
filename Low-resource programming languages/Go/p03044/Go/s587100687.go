package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	vw := make(map[int][][]int)
	for i := 0; i < n-1; i++ {
		u, _ := strconv.Atoi(stringLineScan())
		u--
		v, _ := strconv.Atoi(stringLineScan())
		v--
		w, _ := strconv.Atoi(stringLineScan())
		if _, ok := vw[u]; !ok {
			vw[u] = make([][]int, 0)
		}
		x := make([]int, 2)
		x[0], x[1] = v, w
		vw[u] = append(vw[u], x)
		if _, ok := vw[v]; !ok {
			vw[v] = make([][]int, 0)
		}
		y := make([]int, 2)
		y[0], y[1] = u, w
		vw[v] = append(vw[v], y)
	}
	searched := make([]bool, n)
	init := 0
	searched[init] = true
	ans := make([]int, n)
	_, ans = dfs(init, vw, searched, ans)
	for i := 0; i < n; i++ {
		fmt.Println(ans[i])
	}
}
func dfs(init int, vw map[int][][]int, searched []bool, ans []int) ([]bool, []int) {
	for _, x := range vw[init] {
		v, w := x[0], x[1]
		if !searched[v] {
			searched[v] = true
			if w%2 == 0 {
				ans[v] = ans[init]
			} else {
				ans[v] = 1 - ans[init]
			}
			searched, ans = dfs(v, vw, searched, ans)
		}
	}
	return searched, ans
}
