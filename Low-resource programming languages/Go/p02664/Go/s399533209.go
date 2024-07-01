package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*10)

func main() {
	T := getStdin()
	S := ""

	prev := "N"
	next := "N"
	for i := 0; i < len(T); i++ {
		if i+1 < len(T) {
			next = T[i+1 : i+2]
		}
		if T[i] == '?' {
			if prev == "P" {
				S += "D"
				prev = "D"
			} else if prev == "D" {
				if next == "P" {
					S += "D"
					prev = "D"
				} else (next == "D" || next == "?") {
					S += "P"
					prev = "P"
				} else {
					S += "D"
					prev = "D"
				}
			} else {
				if next == "P" {
					S += "D"
					prev = "D"
				} else (next == "D" || next == "?") {
					S += "P"
					prev = "P"
				} else {
					S += "D"
					prev = "D"
				}
			}
		} else {
			S += T[i : i+1]
			prev = T[i : i+1]
		}
	}
	/*
		for i := 0; i < len(T); i++ {
			if i+1 < len(T) {
				if T[i] == '?' && T[i+1] == '?' {
					if i+2 < len(T) && T[i+2] == '?' {
						S += "DPD"
						i++
					} else if i > 0 && (T[i-1] == 'P') {
						S += "DD"
					} else {
						S += "PD"
					}
				} else if T[i] == '?' && T[i+1] == 'D' {
					S += "PD"
				} else if T[i] == '?' && T[i+1] == 'P' {
					S += "DP"
				} else if T[i] == 'P' && T[i+1] == '?' {
					S += "PD"
				} else if T[i] == 'D' && T[i+1] == '?' {
					if i+2 < len(T) && (T[i+2] == '?' || T[i+2] == 'D') {
						S += "DPD"
						i++
					} else {
						S += "DD"
					}
					S += "DD"
				} else {
					S += T[i : i+2]
				}
				i++
			} else if T[i] == '?' {
				S += "D"
			} else {
				S += T[i : i+1]
			}
		}
	*/

	fmt.Printf("%s", S)
	fmt.Printf("\n")
}

func getStdin() string {
	return readLine()
}
func getStdinInt() int {
	str := getStdin()
	rtn, _ := strconv.Atoi(str)
	return rtn
}
func getStdinIntArr() []int {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}

func getStdinIntArr64() []int64 {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int64, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.ParseInt(val, 10, 64)
	}
	return rtn
}

func readLine() string {
	buf := make([]byte, 0, 0)
	for {
		l, p, e := sc.ReadLine()
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
