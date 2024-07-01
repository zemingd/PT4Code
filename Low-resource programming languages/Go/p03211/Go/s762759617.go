package main

import "bufio"
import "os"
import "math"
import "strconv"
import "fmt"

var rdr = bufio.NewReaderSize(os.Stdin, 100000)

func readLine() (string, error) {
    buf := make([]byte, 0, 100000)
    for {
        l, p, e := rdr.ReadLine()
        if e!=nil {
            return "", e
        }
        buf = append(buf, l...)
        if !p {
            break
        }
    }
    return string(buf), nil
}


func main(){
    S, _ := readLine()
    len_S := len(S)
    mindiff := math.MaxInt32
    
    for i:=0; i<=len_S-3; i++{
        num, _ :=  strconv.Atoi(S[i:i+3])
        //fmt.Printf("num=>%d\n", num)
        diff := absint(num - 753)
        if diff < mindiff {
            mindiff = diff
        }
    }

    fmt.Printf("%d\n", mindiff)
}

func absint(x int) int {
    if x < 0 {
        return -x
    }
    return x
        
}
