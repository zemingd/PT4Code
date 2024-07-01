package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var ti, xi, yi int
	var t [] int
	var x [] int
	var y [] int
	t = append(t,0)
	x = append(x,0)
	y = append(y,0)
	for i:=0 ; i<n; i++ {
	  fmt.Scanf("%d %d %d", &ti, &xi, &yi)
	  t = append(t,ti)
	  x = append(x,xi)
	  y = append(y,yi)
	}

	var dt,dx,dy int
	possible := true
	for i:=1; i<=n; i++ {
	  dt = t[i] - t[i-1]
	  dx = x[i] - x[i-1]
	  dy = y[i] - y[i-1]
	  if dt < (dx+dy) || (dt-(dx+dy))%2 == 1{
		possible = false
		break
	  }
	}
	if possible {
	  fmt.Println("YES")
	} else {
	  fmt.Println("NO")
	}
}
