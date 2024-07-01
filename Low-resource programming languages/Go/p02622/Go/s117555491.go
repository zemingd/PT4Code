package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
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

	for i := 0; i < len(s); i++ {
		targetS := s[i]
		targetT := t[i]

		if(targetS == targetT) {
			continue
		} else {
			answer++
		}
	}

	fmt.Println(answer)
}