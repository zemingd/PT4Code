package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
)

func main()  {

	//答えの変数
	answer := 0

	// スキャナーの生成
	scanner := bufio.NewScanner(os.Stdin)

	// 英小文字であるかのチェックに使用
	reg := regexp.MustCompile(`^[a-z]+$`)

	// Sの取得
	scanner.Scan()
	// 英小文字1文字以上か確認
	if(!reg.MatchString(scanner.Text())) {
		os.Exit(1)
	}
	s := scanner.Text()

	// Tの取得
	scanner.Scan()
	// 英小文字1文字以上か確認
	if(!reg.MatchString(scanner.Text())) {
		os.Exit(1)
	}
	t := scanner.Text()


	//入力規約確認
	if(len(s) != len(t) || 1 > len(s) || len(s) > 200000 || 1 > len(t) || len(t) > 200000) {
		os.Exit(1)
	}

	for i := 0; i < len(s); i++ {
		if(s[i] != t[i]) {
			answer++
		}
	}
	fmt.Println(answer)
}