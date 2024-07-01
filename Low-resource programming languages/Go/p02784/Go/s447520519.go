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
	var H,N,res int
	fmt.Scan(&H)
	fmt.Scan(&N)
	res=0
	for i:=0;i<N;i++{
		tmp:=0
		fmt.Scan(&tmp)
		res+=tmp
	}
	if res>=H {
		fmt.Printf("Yes")
	}else {
		fmt.Printf("No")
	}

}
