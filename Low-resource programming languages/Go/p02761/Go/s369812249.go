package main

import (
	"fmt"
	"strconv"
)

func main() {

	GuessTheNumber()


}

//GuessTheNumber test
func GuessTheNumber() {

	var N, M int

	fmt.Scan(&N, &M)

	s := make([]int, M)
	c := make([]int, M)

	for i := 0; i < M; i++ {

		fmt.Scan(&s[i], &c[i])
	}

	result := make([]int, N)

	keta := 0
	number := 0

	for i := 0; i < M; i++ {

		keta = s[i]
		number = c[i]

		if keta <= N {

			if result[keta-1] == 0 {

				result[keta-1] = number

			} else {

				if result[keta-1] == number {

				} else {

					fmt.Println(-1)
					return
				}
			}
		}else{

			fmt.Println(-1)	
		
			return
		}

	}

	var stresult string

	for _, x := range result {

		stresult += strconv.Itoa(x)
	}

	var check string

	for j := 0; j < 1000; j++ {

		check = strconv.Itoa(j)

		if check == stresult {

			fmt.Println(stresult)
			return

		}

	}

	fmt.Println(-1)

}