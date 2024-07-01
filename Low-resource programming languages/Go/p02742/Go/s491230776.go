package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	In := readLineInt()
	H, W := In[0], In[1]

	if W == 1 || H == 1 {
		fmt.Println(0)
		return
	}

	if W%2 != 0 && H%2 != 0 {
		fmt.Println((H/2)*(W/2) + ((H+1)/2)*((W+1)/2))
	} else {
		fmt.Println(H * W / 2)
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
