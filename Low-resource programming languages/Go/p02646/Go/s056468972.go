package main

import (
	"fmt"
)

func main() {
	var a, b, v, w, t int
	fmt.Scanf("%d %d", &a, &v)
	fmt.Scanf("%d %d", &b, &w)
	fmt.Scanf("%d", &t)

	// 逃げが鬼より小さい座標にいるとき、初期座標を交換する(今回は追いつくかどうかだけの判定なので)
	if b < a {
		tmp := a
		a = b
		b = tmp
	}

	if a+v*t >= b+w*t {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
