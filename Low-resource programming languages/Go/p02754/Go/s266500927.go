package main

import (
	"fmt"
)

func main() {
	var N, A, B int
	fmt.Scanf("%d %d %d", &N, &A, &B)
	var ans int
	switch {
	//もし青と赤の合計値がNより大きい場合
	case A+B > N:
		ans = A
		fmt.Println(ans)
	//もし合計個数から青と赤の合計があまりなく割り切れた場合
	case N%(A+B) == 0:
		ans = N / (A + B) * A
		fmt.Println(ans)
	//もし合計個数から青と赤の合計が割り切れない場合
	case N%(A+B) != 0:
		ans = N / (A + B) * A
		//もし余りの数がAの一度に並べる個数より小さい場合
		if N%(A+B) < A {
			ans += N % (A + B)
			fmt.Println(ans)
			//もし余りの数がAの一度に並べる個数より大きい場合
		} else if N%(A+B) > A {
			ans += A
			fmt.Println(ans)
		}
	}

}
