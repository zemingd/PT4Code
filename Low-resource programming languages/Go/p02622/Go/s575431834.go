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

	// Sの取得
	scanner.Scan()
	s := strings.Split(scanner.Text(), "")

	// Tの取得
	scanner.Scan()
	t := strings.Split(scanner.Text(), "")

	reg := regexp.MustCompile(`[a-z]+`)

	//入力規約確認
	if(len(s) != len(t) || 0 > len(s) || len(s) > 200000 || 0 > len(t) || len(t) > 200000 || !reg.MatchString(s) || !reg.MatchString(t)) {
		os.Exit(-1)
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