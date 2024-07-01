package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	s := nextString()
	k := nextInt()

	subs := make([]string, k)

	for i := 0; i < len(s); i++ {
		for j := i + 1; j < len(s)+1; j++ {
			sub := s[i:j]

			for l := 0; l < k && l-j <= k; l++ {
				if sub == subs[l] {
					// dup
					break
				}
				if subs[l] == "" {
					subs[l] = sub
					break
				}
				if sub < subs[l] {
					if l != k-1 {
						copy(subs[l+1:], subs[l:])
					}
					subs[l] = sub
					break
				}
			}

		}
	}

	fmt.Println(subs[k-1])
}
