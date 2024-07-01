package main

import "fmt"

func main() {
	//変数の定義
	var H, N, p int
	//変数の読み込み %dは整数を表す。
	fmt.Scanf("%d %d", &H, &N)

	a := make([]int, N)
	for i := 0; i < N; i++ {
		// N個のスペースで区切られた変数を読み取る。
		fmt.Scan(&a[i])
	}

	// 総和を計算
	for i := 0; i < N; i++ {
		p += a[i]
	}

	// check :fmt.Printf("%d %d\n", a[4], p)

	// 総和がH以上ならOK。
	// 違うならNO。

	if p >= H {
		fmt.Printf("%s\n", "Yes")
	} else {
		fmt.Printf("%s\n", "No")
	}

}
