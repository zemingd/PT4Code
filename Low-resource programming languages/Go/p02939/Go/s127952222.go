package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	// sc.Split(bufio.ScanWords)
	var S string
	fmt.Scan(&S)
	// fmt.Println(len(S))
	// splits := make([]string, 0)

	cnt := 0
	var i int
	for i = 0; i < len(S)-len(S)%3; i += 3 {
		if (S[i] != S[i+1]) && (S[i+1] != S[i+2]) {
			// fmt.Println("3分割")
			cnt += 3
		} else {
			// fmt.Println("二分割")

			cnt += 2
		}
	}

	if len(S)-i == 1 {
		cnt++
	} else if len(S)-i == 2 {
		if S[len(S)-1] == S[len(S)-2] {
			cnt++
		} else {
			cnt += 2
		}
	}

	fmt.Println(cnt)
	// var flag bool
	// if S[0] != S[1] {
	// 	flag = true
	// } else {
	// 	flag = false
	// }

	// for {

	// 	fmt.Printf("pos=%d\n", pos)
	// 	fmt.Println(splits)

	// 	if pos >= len(S)-1 {
	// 		break
	// 	}

	// 	if flag {
	// 		splits = append(splits, string(S[pos]))
	// 		flag = false
	// 		pos++
	// 	} else {
	// 		if S[pos] == S[pos+1] {
	// 			splits = append(splits, string(S[pos:pos+2]))
	// 			flag = true
	// 			pos += 2
	// 		} else {
	// 			splits = append(splits, string(S[pos]))

	// 			flag = false
	// 			pos++
	// 		}

	// 	}

	// }
	// fmt.Println(splits)
	// fmt.Println(len(splits))
}
