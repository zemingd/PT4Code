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
	var s,a string
	var sl,ans []string
	var n int
	n=nextInt()
	s=nextLine()
	for _, r:=range s{
	    sl=append(sl,string(r))
        }
	a=sl[0]
	ans = append(ans,a)
	for i := 1; i<n; i++{
		if(sl[i] != sl[i-1]){
			a=sl[i]
			ans = append(ans,a)
		}
	}
	fmt.Println(len(ans))

}
