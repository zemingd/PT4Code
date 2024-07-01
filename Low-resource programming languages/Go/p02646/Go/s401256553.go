package main

import "fmt"

func main() {
	var a,v,b,w,t int64

	fmt.Scan(&a)
	fmt.Scan(&v)
	fmt.Scan(&b)
	fmt.Scan(&w)
	fmt.Scan(&t)
	dist := a - b
	if dist < 0 {
		dist *= -1
	}
	// 最初から追いついていたら速度関係なし
	if (dist == 0) {
		fmt.Print("YES")
	}
	vec := v - w
	// 逃げる速さの方が早いなら追いつけない
	if vec <= 0 {
		fmt.Print("NO")
		return
	}
	if vec * t >= dist {
		fmt.Print("YES")
	} else {
		fmt.Print("NO")
	}
}