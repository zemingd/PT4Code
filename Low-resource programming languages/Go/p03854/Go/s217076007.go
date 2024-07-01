package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var debug = false

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var n string
	fmt.Scanf("%s", &n)

	res := GetAnswer(n)
	fmt.Printf("%v\n", res)
}

// GetAnswer ...
func GetAnswer(n string) string {
	prt("inputs: n:%v", n)
	result := "NO"
	n = strings.Replace(n, "eraser", "", -1)
	prt("1st: n:%v", n)
	n = strings.Replace(n, "erase", "", -1)
	prt("2nd: n:%v", n)
	n = strings.Replace(n, "dreamer", "", -1)
	prt("3rd: n:%v", n)
	n = strings.Replace(n, "dream", "", -1)
	if len(n) == 0 {
		result = "YES"
	}


	prt("%v\n", result)
	return result
}

func canMakeDreamEraser(s string) int {
	if strings.HasPrefix(s, "eraser") {

	}
	return 0
}

func prt(format string, inputs ...interface{}) {
	if debug {
		fmt.Printf(format+"\n", inputs...)
	}
}