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
	var N, A, B,res int
	fmt.Scan(&N)
	fmt.Scan(&A)
	fmt.Scan(&B)
	res=0
	if ((B-A)%2==0) {
		res=(B-A)/2
	}else{
		if (N-B>A-1){
			res=(B-(A-1+1))/2+(A-1+1)
		}else{
			res=((N-A)-(N-B+1))/2+(N-B+1)
		}
	}
	fmt.Println(res)
}
