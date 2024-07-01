package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func ScanInt() int {
	sc.Scan()
	var a int
	a,_ = strconv.Atoi(sc.Text())
	return a
}

func dfs(a int, t,c [][]int, ans []int) {
	for i, e := range t[a] {
		if ans[e]!=-1 {
			continue
		}
		ans[e] = (ans[a]+c[a][i])%2
		dfs(e,t,c,ans)
	}
}

func main() {
	var n int
	fmt.Scan(&n)

	t := make([][]int,n)
	c := make([][]int,n)

	sc.Split(bufio.ScanWords)

	for i:=0; i<n-1; i++ {
		var u,v,w int
		u,v,w = ScanInt(),ScanInt(),ScanInt()
		u--
		v--
		t[u],c[u] = append(t[u],v),append(c[u],w)
		t[v],c[v] = append(t[v],u),append(c[v],w)
	}

	ans := make([]int,n)

	for i:=0; i<n; i++ {
		ans[i] = -1
	}

	ans[0] = 0

	dfs(0,t,c,ans)

	for i:=0; i<n; i++ {
		fmt.Println(ans[i])
	}
}
