package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

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

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}


func main(){
	set := make(map[int]struct{})
        set[1] = struct{}{}
	set[2] = struct{}{}
	set[3] = struct{}{}
	var A,B,res int
	A=nextInt()
	B=nextInt()
	delete(set,A)
	delete(set,B)

	for key, _ := range set {
		res=key
	}
	fmt.Println(res)

}