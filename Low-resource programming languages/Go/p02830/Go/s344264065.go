package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {

	var n int

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	buf := make([]byte, 10000)
	sc.Buffer(buf, 100000)

	sc.Scan()
	n, _ = strconv.Atoi(sc.Text())
	strarray := make([]string, 2)

	for i := 0; i < 2; i++ {
		sc.Scan()
		strarray[i] = sc.Text()
	}
	answer := ""
	for i := 0; i < n; i++ {
		answer += strarray[0][i:i+1] + strarray[1][i:i+1]
	}

	fmt.Println(answer)
}
