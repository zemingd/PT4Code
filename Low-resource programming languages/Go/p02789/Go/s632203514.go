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


func nextLine() string {
    sc.Scan()
    return sc.Text()
}


func main(){
	var res string
	var N, M int
	fmt.Scan(&N)
	fmt.Scan(&M)

	if N==M {
		res="Yes"
	}else {
		res="No"
	}
	fmt.Println(res)
}
