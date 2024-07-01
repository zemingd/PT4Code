package main

import "fmt"

func main() {
	var N,cnt int
	fmt.Scan(&N)
	
	for i := 1; i <= N; i++ {
		//もし奇数なら約数の数を調べる
		if i % 2 != 0 {
			divcnt := 0
			for j := 1;  j <= i; j++ {
				if i % j == 0 {
					divcnt++
				}
			}
			//約数の数が8個のものの個数をカウント
			if divcnt == 8 {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}