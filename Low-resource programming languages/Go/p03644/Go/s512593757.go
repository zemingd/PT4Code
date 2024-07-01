package main

import (
	"fmt"
)

//2で割れる回数を返す
func DivideBy2(i int)int {
	cnt := 0
	num := i
	for num % 2 == 0 {
		cnt++
		num /= 2
	}
	return cnt
}

func main() {
	var n  int
	fmt.Scan(&n)
	
	//2で割れる回数が最も多い数字を格納する変数を初期化
	max_num := 0
	
	//2で割れる最大の回数を格納する変数を初期化（仮に-1とする）
	max_cnt := -1
	for i := 1; i <= n; i++ {
		if DivideBy2(i) > max_cnt {
			max_cnt = DivideBy2(i)
			max_num = i
		}
	}
	fmt.Println(max_num)
}