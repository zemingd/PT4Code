package main

import "fmt"

func main() {
	var n, b int
	fmt.Scanf("%d", &n)
	out := 0
	tmp := 0
	for i := 0; i < n; i++ {
		if i < n-1 {
			fmt.Scanf("%d", &b)
		}
		if i == 0 {
			// 初回はB0がA0の上限
			out += b
		} else if i < n-1 {
			// それ以外はBiと一回前のBiの小さい方
			if tmp < b {
				out += tmp
			} else {
				out += b
			}
		} else {
			out += tmp
		}
		// 前の値を記憶
		tmp = b
	}
	fmt.Println(out)
}