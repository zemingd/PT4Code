package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	t := make([][]int,n)
	c := make([][]int,n)

	for i:=0; i<n-1; i++ {
		var u,v,w int
		fmt.Scan(&u,&v,&w)
		u--
		v--
		t[u],c[u] = append(t[u],v),append(c[u],w)
		t[v],c[v] = append(t[v],u),append(c[v],w)
	}

	ans := make([]int,n)
	q := make([]int,0)

	for i:=0; i<n; i++ {
		ans[i] = -1
	}

	ans[0] = 0
	q = append(q,0)

	for ;len(q)!=0; {
		p := q[0]
		q = q[1:]
		for i:=0; i<len(t[p]); i++ {
			if ans[t[p][i]]!=-1 {
				continue
			}
			ans[t[p][i]] = (ans[p]+c[p][i])%2
			q = append(q,t[p][i])
		}
	}

	for i:=0; i<n; i++ {
		fmt.Println(ans[i])
	}
}
