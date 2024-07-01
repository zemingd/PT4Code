package main

//B - Resale

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

//エラーが発生したときは勝手にpanicしろって関数にはmustって名前を付ける慣例
func mustParseInt(text string) int {
	num, err := strconv.Atoi(text)
	if err != nil {
		panic(err)
	}
	return num
}

func mustParseFloat(text string) float64 {
	num, err := strconv.ParseFloat(text, 64)
	if err != nil {
		panic(err)
	}
	return num
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	var line string
	scanner.Scan()

	line = scanner.Text()
	n := mustParseInt(line)

	scanner.Scan()
	line = scanner.Text()
	v_str_array := strings.Split(line, " ")
	//	v_int_array := make([]int, len(v_str_array))

	scanner.Scan()
	line = scanner.Text()
	c_str_array := strings.Split(line, " ")
	//	c_int_array := make([]int, len(c_str_array))

	//	xmy_int_array := make([]int, n)
	ans := 0
	for i := 0; i < n; i++ {
		xmy := mustParseInt(v_str_array[i]) - mustParseInt(c_str_array[i])
		if xmy > 0 {
			ans = ans + xmy
		}

	}

	fmt.Println(ans)
}
