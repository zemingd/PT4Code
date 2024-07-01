package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	//https://qiita.com/tnoda_/items/b503a72eac82862d30c6

	//1行ずつ読み込む
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	s := sc.Text()

	if s[2:3] == s[3:4] && s[4:5] == s[5:6] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
