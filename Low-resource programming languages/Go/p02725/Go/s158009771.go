package main

import (
	"fmt"
	"strings"
	"bufio"
	"os"
	"strconv"
	"math"
)

var sc = bufio.NewScanner(os.Stdin)

func main(){
	var lineInput string
	var splitedLine []string

	if sc.Scan() {
        lineInput = sc.Text()
    }
	splitedLine = strings.Split(lineInput, " ")
	k, _ := strconv.Atoi(splitedLine[0])
	n, _ := strconv.Atoi(splitedLine[1])
	
	// ソート済みの数値が入力される
	var a []float64
	if sc.Scan() {
        lineInput = sc.Text()
	}
	splitedLine = strings.Split(lineInput, " ")
	for _, s := range splitedLine {
		val, _ := strconv.ParseFloat(s, 64)
		a = append(a, val)
	}

	miniCost := float64(k)  // 湖を1周した長さ
	// 総当たりで最小コストを求める
	for padding := 0; padding < n; padding++ {
		
		tmpCostCW := .0
		tmpCostCCW := .0
		// 家の間の距離を求める
		for i := 0; i < n-1; i++ {
			// 時計回り
			house01 := (padding + i) % n
			house02 := (padding + i + 1) % n
			if (house01 == 0 && house02 == n-1) || (house02 == 0 && house01 == n-1){
				tmpCostCW += float64(k) - a[n-1]
			} else {
				tmpCostCW += math.Abs(a[house01] - a[house02])
			}

			// 反時計回り
			house01 = (padding + n - i) % n
			house02 = (padding + n - i - 1) % n
			if (house01 == 0 && house02 == n-1) || (house02 == 0 && house01 == n-1){
				tmpCostCCW += float64(k) - a[n-1]
			} else {
				tmpCostCCW += math.Abs(a[house01] - a[house02])
			}
		}
		if tmpCostCW < miniCost {
			miniCost = tmpCostCW
		}
		if tmpCostCCW < miniCost {
			miniCost = tmpCostCCW
		}
	}
	fmt.Println(int(miniCost))
}