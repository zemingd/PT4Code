package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"regexp"
)

func main()  {

	//答えの変数
	var answer int
	answer = 0

	// スキャナーの生成
	scanner := bufio.NewScanner(os.Stdin)

	// 英小文字であるかのチェックに使用
	reg := regexp.MustCompile(`^[a-z]+$`)

	// Sの取得
	scanner.Scan()
	if(!reg.MatchString(scanner.Text())) {
		os.Exit(1)
	}
	s := strings.Split(scanner.Text(), "")

	// Tの取得
	scanner.Scan()
	if(!reg.MatchString(scanner.Text())) {
		os.Exit(1)
	}
	t := strings.Split(scanner.Text(), "")


	//入力規約確認
	if(len(s) != len(t) || 0 > len(s) || len(s) > 200000 || 0 > len(t) || len(t) > 200000) {
		os.Exit(1)
	}

	for i := 0; i < len(s); i++ {
		targetS := s[i]
		targetT := t[i]

		if(targetS != targetT) {
			answer++
			s[i] = t[i]
		}
	}

	fmt.Println(answer)
}