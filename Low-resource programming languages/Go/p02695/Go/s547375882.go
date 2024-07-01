package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

const (
	maxBufsize = 1000000
)

func inputs(lines int) []string {
	var strSlice []string

	rdr := bufio.NewReaderSize(os.Stdin, maxBufsize)

	for i := 0; i < lines; i++ {

		line := ReadLine(rdr)
		strSlice = append(strSlice, line)

	}

	return strSlice
}

// ReadLine is to read long line
func ReadLine(rdr *bufio.Reader) string {
	buf := make([]byte, 0, maxBufsize)
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

func main() {
	line0 := inputs(1)

	tmp := strings.Split(line0[0], " ")
	//N, _ := strconv.Atoi(tmp[0])
	M, _ := strconv.Atoi(tmp[1])
	Q, _ := strconv.Atoi(tmp[2])

	lineq := inputs(Q)

	arrQ := make([][]int, Q+1)
	for i := 0; i < Q+1; i++ {
		arrQ[i] = make([]int, 4)
	}

	for i := 0; i < Q; i++ {
		tmpq := strings.Split(lineq[i], " ")

		a, _ := strconv.Atoi(tmpq[0])
		b, _ := strconv.Atoi(tmpq[1])
		c, _ := strconv.Atoi(tmpq[2])
		d, _ := strconv.Atoi(tmpq[3])

		arrQ[i+1][0] = a
		arrQ[i+1][1] = b
		arrQ[i+1][2] = c
		arrQ[i+1][3] = d
	}

	ans := 0
	for i1 := 1; i1 < M+1; i1++ {
		for i2 := i1; i2 < M+1; i2++ {
			for i3 := i2; i3 < M+1; i3++ {
				for i4 := i3; i4 < M+1; i4++ {
					for i5 := i4; i5 < M+1; i5++ {
						for i6 := i5; i6 < M+1; i6++ {
							for i7 := i6; i7 < M+1; i7++ {
								for i8 := i7; i8 < M+1; i8++ {
									for i9 := i8; i9 < M+1; i9++ {
										for i10 := i9; i10 < M+1; i10++ {
											tmp := 0
											tmpArr := []int{0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10}
											for j := 1; j < Q+1; j++ {
												A := arrQ[j][0]
												B := arrQ[j][1]
												C := arrQ[j][2]
												D := arrQ[j][3]
												if tmpArr[B]-tmpArr[A] == C {
													tmp += D
												}
											}

											ans = int(math.Max(float64(ans), float64(tmp)))

										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	fmt.Println(ans)
}
