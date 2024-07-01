package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanStringToken() (word string) {
	scanner.Scan()
	word = scanner.Text()
	return
}

func scanNumberToken() (num int) {
	scanner.Scan()
	num, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return
}

func main() {
	// ※デフォルトでは行単位で読み込む設定になっているので、設定を変えたくないならやらなくていい。
	// SplitFuncはScannerが読み込む単位を設定する関数。行単位とか、単語単位とか。
	// デフォルトでいくつかの関数が用意されている。
	// https://golang.org/pkg/bufio/#ScanBytes
	// https://golang.org/pkg/bufio/#ScanLines
	// https://golang.org/pkg/bufio/#ScanRunes
	// https://golang.org/pkg/bufio/#ScanWords
	// scanner.Split(bufio.ScanWords)

	m := make(map[string]int64, 4)
	a := scanNumberToken()
	for i := 0; i < a; i++ {
		s := scanStringToken()
		m[s]++
	}

	fmt.Println(fmt.Sprintf("AC x %v", m["AC"]))
	fmt.Println(fmt.Sprintf("WA x %v", m["WA"]))
	fmt.Println(fmt.Sprintf("TLE x %v", m["TLE"]))
	fmt.Println(fmt.Sprintf("RE x %v", m["RE"]))

}
