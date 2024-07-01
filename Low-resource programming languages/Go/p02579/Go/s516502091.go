package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scan_init()
	s := strings.Split(readLine(), "")
	maxIndex := len(s) //次に入れるindex
	q,_ := strconv.Atoi(readLine())
	leftS := []string{}
	rightS := []string{}
	//k := 0
	for i:= (maxIndex/2)-1; i>=0; i-- {
		// k++
		leftS = append(leftS, s[i])
	}
	// k = 0
	for i:= (maxIndex/2); i<maxIndex; i++ {
		rightS = append(rightS, s[i])
	}
	change := false //反転がきたらこれをon
	// scan_init()
	for i:= 0; i<q; i++ {
		get := scanInt()
		if get == 1 {
			change = !change
		} else {
			f := scanInt()
			c := scan()
			if f == 1 && !change || f == 2 && change {
				// 先頭
				leftS = append(leftS, c)
			} else {
				rightS = append(rightS,c)
			}
		}
		// fmt.Println(get, s, change)
	}
	// output := make([]string, len(leftS)+len(rightS))
	if !change {
		k := 0
		for i:= len(leftS)-1;i>=0;i-- {
			// output[k] = leftS[i]
			fmt.Print(leftS[i])
			k++
		}
		for i:= 0; i<len(rightS); i++ {
			// output[k] = rightS[i]
			fmt.Print(rightS[i])
			k++
		}
	} else {
		k := 0
		for i:= len(rightS)-1;i>=0;i-- {
			// output[k] = rightS[i]
			fmt.Print(rightS[i])
			k++
		}
		for i:= 0; i<len(leftS); i++ {
			// output[k] = leftS[i]
			fmt.Print(leftS[i])
			k++
		}
	}
	// fmt.Println(strings.Join(output,""))
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
	list := strings.Split(S, " ")
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