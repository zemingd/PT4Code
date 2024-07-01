package main

import (
    "fmt"
    "os"
    "bufio"
    "strings"
    "strconv"
)

func main() {
    var fp *os.File
    fp = os.Stdin
    reader := bufio.NewReaderSize(fp, 4096)
    line1 := readLine(reader)
    arr := strings.Split((line1), " ")
    N, _ := strconv.Atoi(arr[0])
    Y, _ := strconv.Atoi(arr[1])
	var k int
  
  	for i := 0; i < N; i++ {
     	for j := 0; j < N; j++ {
          	k = N - i - j
          
          	if (10000 * i + 5000 * j + 1000 * k) == Y && (i + j + k) == N {
                fmt.Println(strconv.Itoa(i) + " " + strconv.Itoa(j) + " " + strconv.Itoa(k))
            	return
            }
 		}   
 	}
  
	fmt.Println(strconv.Itoa(-1) + " " + strconv.Itoa(-1) + " " + strconv.Itoa(-1))
}

func readLine(reader *bufio.Reader) string {
    buf := make([]byte, 0, 1000000)

    for {
        l, p, e := reader.ReadLine()

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
