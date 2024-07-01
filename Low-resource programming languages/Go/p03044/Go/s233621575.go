package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	t := make([]int,n)

	for i:=0; i<n; i++ {
		t[i] = -1
	}

	for i:=0; i<n-1; i++ {
		var u,v,w int
		fmt.Scan(&u,&v,&w)
		u--
		v--
		
		if t[v]==-1 {
			if t[u]==-1 {
				if w%2==0 {
					t[v],t[u] = 0,0
				} else {
					t[v],t[u] = 0,-1
				}
			} else {
				if w%2==0 {
					t[v] = t[u]
				} else {
					if t[u]==0 {
						t[v] = 1
					} else {
						t[v] = 0
					}
				}
			}
		} else {
			if t[u]==-1 {
				if w%2==0 {
					t[u] = t[v]
				} else {
					if t[v]==0 {
						t[u] = 1
					} else {
						t[u] = 0
					}
				}
			}
		}
	}

	for i:=0; i<n; i++ {
		fmt.Println(t[i])
	}
}
