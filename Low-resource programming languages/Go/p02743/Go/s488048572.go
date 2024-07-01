package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	In := readLineInt()
	a, b, c := math.Sqrt(float64(In[0])), math.Sqrt(float64(In[1])), math.Sqrt(float64(In[2]))

	if a+b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

/////////////////////////////////////////
func readLineInt() []int {
	result := make([]int, 0)
	for _, v := range strings.Split(readLine(), " ") {
		i, _ := strconv.Atoi(v)
		result = append(result, i)
	}
	return result
}

var reader = bufio.NewReaderSize(os.Stdin, 1e6)

func readLine() string {
	result := make([]byte, 0, 1e6)
	for {
		line, remains, e := reader.ReadLine()
		if e != nil {
			panic(e)
		}
		result = append(result, line...)
		if !remains {
			break
		}
	}
	return string(result)
}