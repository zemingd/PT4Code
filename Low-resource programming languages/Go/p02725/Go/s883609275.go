/*
 * Golangの練習
 *
 */

package main

import (
	"fmt"
	"strings"
	"bufio"
	"os"
	"strconv"
)

var rdr = bufio.NewReaderSize(os.Stdin, 100000000000)

func readLine() string {
    buf := make([]byte, 0, 100000000000)
    for {
        l, p, e := rdr.ReadLine()
        if e != nil {
            panic(e)
        }
        buf = append(buf, l...)
        if !p {
            break
        }
    }
    return string(buf)
}

func main(){
	var splitedLine []string

	// 1行目
	splitedLine = strings.Split(readLine(), " ")
	k, _ := strconv.Atoi(splitedLine[0])
	n, _ := strconv.Atoi(splitedLine[1])
	
	// 2行目
	var a = make([]int, n+1)
	splitedLine = strings.Split(readLine(), " ")
	for i, s := range splitedLine {
		val, _ := strconv.Atoi(s)
		a[i] = val
	}
	a[n] = k+a[0]

	// NOTE: REの原因個所の特定
	maxCost := 0
	for i := 0; i < n; i++ {
		tmp := a[i+1] - a[i]
		if tmp > maxCost {
			maxCost = tmp
		}
	}
	fmt.Println(k - maxCost)
}