package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

//Util
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func minInt(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func absFloat64(a float64) float64 {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func minFloat64(a, b float64) float64 {
	if a > b {
		return b
	} else {
		return a
	}
}

func str2Int(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}

//Main
var sc = bufio.NewScanner(os.Stdin)
var s string

func main() {
	sc.Split(bufio.ScanWords)
	s = nextStr()
	n := 4
	test := false
	var ans int

	for i := 0; i < (1 << uint(n-1)); i++ {
		sum := str2Int(string(rune(s[0])))
		var w rune
		//l: sの位置
		for l := 1; l < n; l++ {
			//1が出るまで、wに文字列をためていく
			w = rune(s[l])
			//パターンiについて、l番目のしきりが有効であるとき
			if (i & (1 << uint(3-l))) != 0 {
				//ここまでの文字列を数字として足す
				sum += str2Int(string(w))
			} else {
				sum -= str2Int(string(w))
			}
		}
		//残ったAを足す
		//fmt.Println(i, sum)
		if sum == 7 {
			test = true
			ans = i
			break
		}
	}

	if test {
		b := fmt.Sprintf("%03b", ans)
		buf := bufio.NewWriter(os.Stdout)
		//fmt.Println(b)
		for i := 0; i < n-1; i++ {
			var ope string
			if string(b[i]) == "1" {
				ope = "+"
			} else {
				ope = "-"
			}
			buf.Write([]byte(fmt.Sprintf("%s%s", string(s[i]), ope)))
		}
		buf.Write([]byte(fmt.Sprintf("%s=7\n", string(s[3]))))
		buf.Flush()
	}
}
