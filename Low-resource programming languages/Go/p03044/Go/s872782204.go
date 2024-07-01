package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func dfs(a int, ans []int, t,co [][]int) {
	for i, e := range t[a] {
		if ans[e] != -1 {
			continue
		}
		
		if co[a][i]%2 == 0 {
			ans[e] = ans[a]
		} else {
			if ans[a] == 0 {
				ans[e] = 1
			} else {
				ans[e] = 0
			}
		}
		dfs(e, ans,t,co)
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	n := scanInt()

	t := make([][]int,n)
	co := make([][]int,n)

	for i := 1; i < n; i++ {
		u := scanInt() - 1
		v := scanInt() - 1
		w := scanInt()
		t[u] = append(t[u], v)
		t[v] = append(t[v], u)
		co[u] = append(co[u], w)
		co[v] = append(co[v], w)
	}

	ans := make([]int,n)
	for i := 0; i < n; i++ {
		ans[i] = -1
	}
	ans[0] = 0

	dfs(0,ans,t,co)

	for i := 0; i < n; i++ {
		fmt.Println(ans[i])
	}

}
