package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var a1, a2, a3 []int
	var n int

	if sc.Scan() {
		a1 = splitToInt(sc.Text())
	}
	if sc.Scan() {
		a2 = splitToInt(sc.Text())
	}

	if sc.Scan() {
		a3 = splitToInt(sc.Text())
	}

	if sc.Scan() {
		n, _ = strconv.Atoi(sc.Text())
	}

	readBcount := 0
	bArr := make([]int, n)

	for readBcount < n {
		if sc.Scan() {
			b, _ := strconv.Atoi(sc.Text())
			bArr = append(bArr, b)
			readBcount++
		}
	}

	// あたりの組み合わせ8つ
	row1 := a1
	if isBingo(bArr, row1) {
		fmt.Print("Yes")
		return
	}

	row2 := a2
	if isBingo(bArr, row2) {
		fmt.Print("Yes")
		return
	}

	row3 := a3
	if isBingo(bArr, row3) {
		fmt.Print("Yes")
		return
	}

	col1 := []int{a1[0], a2[0], a3[0]}
	if isBingo(bArr, col1) {
		fmt.Print("Yes")
		return
	}

	col2 := []int{a1[1], a2[1], a3[1]}
	if isBingo(bArr, col2) {
		fmt.Print("Yes")
		return
	}

	col3 := []int{a1[2], a2[2], a3[2]}
	if isBingo(bArr, col3) {
		fmt.Print("Yes")
		return
	}

	dia1 := []int{a1[0], a2[1], a3[2]}
	if isBingo(bArr, dia1) {
		fmt.Print("Yes")
		return
	}

	dia2 := []int{a1[2], a2[1], a3[0]}
	if isBingo(bArr, dia2) {
		fmt.Print("Yes")
		return
	}
	fmt.Print("No")
}

func splitToInt(s string) (intArr []int) {
	arr := strings.Split(s, " ")

	for _, v := range arr {
		intV, _ := strconv.Atoi(v)
		intArr = append(intArr, intV)
	}
	return
}

func contains(arr []int, val int) bool {
	for _, v := range arr {
		if v == val {
			return true
		}
	}
	return false
}

func isBingo(base, target []int) bool {
	hit := 0
	for _, v := range target {
		if contains(base, v) {
			hit++
		}
	}

	return hit == 3
}
