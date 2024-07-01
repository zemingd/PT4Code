package main

import (
	"fmt"
)

func main() {
	var n int64
	fmt.Scan(&n)

	// 1 1 2*1 3*1 4*2 5*3 6*4*2
	// nが偶数のとき
	//  10, 20, ..., 100, 110, ...
	//  のときに0が増え、それ以外では増えない
	//  10で割ったときの商 + 100で割ったときの商 + 1000で割ったときの商 + ...
	//  5が入っている分の考慮が必要...10や100などで割ったあとに5で割れる回数だけ余分に0が増える
	// nが奇数のとき
	//  0
	// 10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160
	// 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16

	if n%2 == 1 {
		fmt.Println(0)
	} else {
		var ans int64 = 0
		var divBase int64 = 10
		for n/divBase != 0 {
			zeros := n / divBase
			ans += zeros
			for zeros/5 > 0 {
				ans += zeros/5 - zeros/10
				zeros /= 5
			}
			divBase *= 10
		}
		fmt.Println(ans)
	}
}
