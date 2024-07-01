package main

import (
	"fmt"
	"strconv"
)

func main() {
	// Code for C - Train Ticket
	var S string
	fmt.Scanf("%s", &S)

	var sum int
	var ans int
	for i := 0; i < (1 << 3); i++ {
		sum, _ = strconv.Atoi(string(S[0]))
		//fmt.Println(sum)
		for j := 0; j < 3; j++ {
			temp, _ := strconv.Atoi(string(S[j+1]))
			//fmt.Printf("%d", i>>j&1)
			if i>>j&1 == 1 {
				sum += temp
				//fmt.Println(sum)
			} else {
				sum -= temp
			}
		}
		//fmt.Printf("\n")
		if sum == 7 {
			ans = i
			break
		}
	}

	for i := 0; i < 3; i++ {
		fmt.Printf("%s", string(S[i]))
		if ans>>i&1 == 1 {
			fmt.Printf("%s", string("+"))
		} else {
			fmt.Printf("%s", string("-"))
		}
	}
	fmt.Printf("%s=7\n", string(S[3]))
}
