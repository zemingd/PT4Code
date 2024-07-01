package main

import (
	// "bufio"
	"fmt"
	// "os"
)

func main() {

	//答えの変数
	cnt := 0

	var s, t string

	// スキャナーの生成
	// scanner := bufio.NewScanner(os.Stdin)

	fmt.Scan(&s, &t)
	// // Sの取得
	// scanner.Scan()
	// s = scanner.Text()

	// // Tの取得
	// scanner.Scan()
	// t = scanner.Text()

	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
