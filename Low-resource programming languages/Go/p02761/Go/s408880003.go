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

	if M==0{

		if N==1{

			fmt.Println(0)

		}else if N==2{

			fmt.Println(10)

		}else if N==3{

			fmt.Println(100)

		}

		return
	}

	result := make([]int, N)

	for i := 0; i < N; i++ {

		result[i] = -1
	}

	keta := 0
	number := 0

	for i := 0; i < M; i++ {

		keta = s[i]
		number = c[i]

			if result[keta-1] == -1 {

				result[keta-1] = number

			} else {

				if result[keta-1] == number {

				} else {

					fmt.Println(-1)
					return
				}
			}

	}
	
	if  N>=2 &&  result[0] == -1{

		result[0] = 1

	}

	var stresult string

	for _, x := range result {

		if x == -1 {

			x = 0
		}

		stresult += strconv.Itoa(x)
	}

	intresult, _ := strconv.Atoi(stresult)

	for j := 0; j < 1000; j++ {

		if j == intresult {

			fmt.Println(j)

			return

		}

	}

	fmt.Println(-1)

}