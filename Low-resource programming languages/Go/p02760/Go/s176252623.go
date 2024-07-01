package main

import "fmt"

func main() {
	var a [3][3]int
	var d [3][3]int
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scan(&a[i][j])
		}
	}
	var n int
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var v int
		fmt.Scan(&v)
		for i := 0; i < 3; i++ {
			for j := 0; j < 3; j++ {
				if a[i][j] == v {
					d[i][j] = 1
				}
			}
		}
	}
	ok := false
	var cnt int
	for i := 0; i < 3; i++ {
		cnt = 0
		for j := 0; j < 3; j++ { // 横一列揃っているかチェック
			cnt += d[i][j]
		}
		if cnt == 3 {
			ok = true
		}
	}
	for i := 0; i < 3; i++ {
		cnt = 0
		for j := 0; j < 3; j++ { // 縦一列揃っているかチェック
			cnt += d[j][i]
		}
		if cnt == 3 {
			ok = true
		}
	}
	cnt = 0
	for j := 0; j < 3; j++ {
		cnt += d[j][j] // 斜めビンゴチェック - 左上から右下
	}
	if cnt == 3 {
		ok = true
	}
	for j := 0; j < 3; j++ {
		cnt += d[j][2-j] // 斜めビンゴチェック - 右上から左下
	}
	if cnt == 3 {
		ok = true
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
