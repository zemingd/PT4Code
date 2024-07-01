package main

import (
	"fmt"
	"strconv"
)

func main(){
	var number int64
	fmt.Scanf("%d", &number)

	//sum := calc(number)
	//fmt.Printf("%d\n", countSuffixZero(sum))

	//• N が奇数の場合 · · · f(N) はいくつかの奇数の積なので、2 で割れることはありません。よっ
	//て答えは常に 0 です。
	//• N が偶数の場合 · · · 明らかに、f(N) が 2 で割り切れる回数は 5 で割り切れる回数よりも多い
	//ので、5 で割り切れる回数のみを考えます。

	//list := listMultiple(number)

	fmt.Printf("%d\n", answer(number))
}

func answer(n int64) int64 {
	ret := int64(0)
	for i := 1; i < 2000; i++ {
		t := int64(1)
		for j := 1; j <= i; j++ {
			t = t * 5
		}
		if n < (t * 2) {
			break
		}
		ret += n / (2 * t)
	}
	return ret
}