package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
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
	S := readLine()

	fmt.Printf("%s\n", ABC136D(S))
}

// ABC136D ...
func ABC136D(S string) (res string) {
	resSlice := make([]int, len(S))

	for i := 0; i < len(S); i++ {
		pos, cnt := i, 0
		for {
			if S[pos] == 'R' && S[pos+1] == 'L' {
				if cnt%2 == 0 {
					resSlice[pos]++
				} else {
					resSlice[pos+1]++
				}
				break
			} else if S[pos] == 'L' && S[pos-1] == 'R' {
				if cnt%2 == 0 {
					resSlice[pos]++
				} else {
					resSlice[pos-1]++
				}
				break
			} else if S[pos] == 'R' {
				pos++
				cnt++
			} else if S[pos] == 'L' {
				pos--
				cnt++
			}
		}
	}

	for i := 0; i < len(resSlice); i++ {
		res += strconv.Itoa(resSlice[i]) + " "
	}

	return res[0 : len(res)-1]
}
