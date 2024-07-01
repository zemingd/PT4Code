package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	h := make([]bool, 10)
	for i := 0; i < 10; i++ {
		var d int
		fmt.Scan(&d)
		//フラグ配列作製
		//初期値がfalseのためtrueで書き換え
		h[d] = true
	}

	for {
		flag := true
		t := n

		for t > 0 && flag {
			if h[t%10] {
				flag = false
			}
			t /= 10
		}

		if flag {
			fmt.Println(n)
			break
		}
		n++
	}
}
