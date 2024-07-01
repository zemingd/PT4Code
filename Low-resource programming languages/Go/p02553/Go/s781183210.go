package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	scan_init()
	box:= make([]int,4)
	for i:= 0; i<4; i++ {
		box[i] = scanInt()
	}
	minusMax := -int(math.Pow(10,18))+1
	plusMax := -int(math.Pow(10,18))+1
	//if plusMax < box[1] && 0 < box[3]{
	//	plusMax = box[1]
	//}
	//if plusMax < box[3] && 0 < box[1] {
	//	plusMax = box[3]
	//}
	if plusMax < box[1]*box[3] {
		plusMax = box[3]*box[1]
	}
	if plusMax < box[3]*box[0] {
		plusMax = box[3]*box[0]
	}
	//if minusMax < -box[0] && 0 < -box[2] {
	//	minusMax = -box[0]
	//}
	//if minusMax < -box[2] && 0 < -box[0] {
	//	minusMax = box[2]
	//}
	if minusMax < box[0]*box[2] {
		minusMax = box[0]*box[2]
	}
	if minusMax < box[1]*box[2] {
		minusMax = box[1]*box[2]
	}
	if minusMax < plusMax {
		fmt.Println(plusMax)
	} else {
		fmt.Println(minusMax)
	}
}

var sc = bufio.NewScanner(os.Stdin)

func scan_init() {
	sc.Split(bufio.ScanWords)
}
func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func scan() string {
	sc.Scan()
	return sc.Text()
}

var rdr = bufio.NewReaderSize(os.Stdin, 200000)

func readLine() string {
	buf := make([]byte, 0, 200000)
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
func readLineToNumber() int {
	S := readLine()
	number, _ := strconv.Atoi(S)
	return number
}
func readLineToSlice() []string {
	S := readLine()
	list := strings.Split(S, "")
	return list
}
func readLineToNumberSlice(memo map[string]int) []int {
	// err時は-1を代入
	S := readLine()
	intList := make([]int, len(S))
	for i := 0; i < len(S); i++ {
		if val, ok := memo[string(S[i])]; ok {
			intList[i] = val
		} else {
			intList[i] = -1
		}
	}
	return intList
}