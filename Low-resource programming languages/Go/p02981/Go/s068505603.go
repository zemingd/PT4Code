package main
import (
    "fmt"
    "bufio"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main(){
    // Your code here!
    sc.Split(bufio.ScanWords)
    sc.Scan()
    N,e1:=strconv.Atoi(sc.Text())
    if e1!=nil{
        panic(e1)
    }
    sc.Scan()
    A,e2:=strconv.Atoi(sc.Text())
    if e1!=nil{
        panic(e2)
    }
    sc.Scan()
    B,e3:=strconv.Atoi(sc.Text())
    if e3!=nil{
        panic(e3)
    }
    if A>B*N{
        fmt.Println(B*N)
    }else{
        fmt.Println(A)
    }
}
