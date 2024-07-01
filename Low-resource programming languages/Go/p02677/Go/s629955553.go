package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

// https://atcoder.jp/contests/abc167/tasks/abc168_a
func main() {

	data := readLines()

	a, _ := strconv.Atoi(data[0][0])
	b, _ := strconv.Atoi(data[0][1])
	h, _ := strconv.Atoi(data[0][2])
	m, _ := strconv.Atoi(data[0][3])

	// Aが指している角度を算出
	// 単身は 360° / 12*60分 で 回る
	aKakudo := (float64(360) / float64(12*60)) * float64(h*60+m)
	// Bが指している角度を算出
	// 長身は 360° / 60分 で 回る
	bKakudo := float64(360 / 60 * m)

	kakudoDelta := math.Abs(aKakudo - bKakudo)

	kakudo := kakudoDelta
	if kakudoDelta == 180 {
		// 針が伸びているときは短針 + 長針
		fmt.Println(a + b)
		return
	} else if kakudoDelta > 180 {
		// 三角形の１つの角度は 180未満(逆をとる
		kakudo = 360 - kakudoDelta
	}
	// 余弦定理を適応する
	// a^2 = b^2+c^2 -2bccosA
	ans := math.Sqrt(math.Pow(float64(a), 2) + math.Pow(float64(b), 2) - float64(2)*(float64(a)*float64(b)*math.Cos(kakudo*math.Pi/180)))
	fmt.Printf("%f", ans)
}

func readLines() [][]string {
	var result [][]string
	for i := 0; ; i++ {
		line, e := readLine()
		if e != nil {
			break
		}
		result = append(result, strings.Split(line, " "))
	}
	return result
}

func readLine() (string, error) {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			return "", e
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf), nil
}
