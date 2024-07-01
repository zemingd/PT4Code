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
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)

	if a<b {
		for i:=0; i<b;i++{
			fmt.Print(a)
		}
	}else {
		for i:=0; i<a;i++{
			fmt.Print(b)
		}
	}
	fmt.Println("")
}
