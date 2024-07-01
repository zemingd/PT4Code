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

var sc = bufio.NewScanner(os.Stdin)

func main(){
	var lineInput string
	var splitedLine []string

	// 1行目
	if sc.Scan() {
        lineInput = sc.Text()
    }
	splitedLine = strings.Split(lineInput, " ")
	k, _ := strconv.Atoi(splitedLine[0])
	n, _ := strconv.Atoi(splitedLine[1])
	
	// 2行目
	var a []int
	if sc.Scan() {
        lineInput = sc.Text()
	}
	splitedLine = strings.Split(lineInput, " ")
	for _, s := range splitedLine {
		val, _ := strconv.Atoi(s)
		a = append(a, val)
	}

	// NOTE: REの原因個所の特定
	// maxCost := k - a[n-1] + a[0]
	// for i := 1; i < n; i++ {
	// 	tmp := a[i] - a[i-1]
	// 	if tmp > maxCost {
	// 		maxCost = tmp
	// 	}
	// }
	// fmt.Println(k - maxCost)
	_ = k + n
	fmt.Println(10)
}