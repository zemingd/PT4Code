package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func nextString() string {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	return s
}

func reverse(s string) string {

	runes := []rune(s)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}

// 1.文字列配列 s を作成
// 2. 1からqまでループ 200000
// 3. t = 1 の時
// 	strings.Join reverseで反転したsを生成　O(len(s))
// 4. t = 2 の時
// 	  f = 1 の時
// 			cの配列にsをアペンド O(1)
// 	  f = 2 の時
// 			sにcをアペンド O(1)
// 5. sをstrings.Joinで出力

func main() {
	sc.Split(bufio.ScanWords)
	s := []string{nextString()}
	q := nextInt()

	for i := 0; i < q; i++ {
		t := nextInt()
		if t == 1 {
			r := reverse(strings.Join(s, ""))
			s = []string{r}
		} else {
			f := nextInt()
			c := nextString()
			if f == 1 {
				array := []string{c}
				s = append(array, s...)
			} else {
				s = append(s, c)
			}
		}
	}
	fmt.Println(strings.Join(s, ""))
}
