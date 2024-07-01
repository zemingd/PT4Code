package main
import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

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

func readInt() int {
    if sc.Scan() {
        ret, _ := strconv.Atoi(sc.Text())
        return ret
    }
    return 0
}

func readShortLine() string {
    var ret string
    if sc.Scan() {
        ret = sc.Text()
    }
    return ret
}

func Abs(i int64) int64 {
    if i >= 0 {
        return i
    }
    return -i
}

func main(){
    s := readLine()
    initialColors := make([]int64, len(s))
    for i, c := range s {
        initialColors[i] = int64(c - '0')
    }
    // fmt.Println(initialColors)
    
    candidate1 := make([]int64, len(s))
    candidate2 := make([]int64, len(s))
    candidates := [][]int64{candidate1, candidate2}
    var firstColor int64
    for _, cand := range candidates {
        for i, _ := range cand {
            cand[i] = (firstColor + int64(i)) % 2
        }
        firstColor = (firstColor + 1) % 2
    }
    // fmt.Println(candidates[0])
    // fmt.Println(candidates[1])
    
    distances := make([]int64, 2)
    for i, cand := range candidates {
        for j, c := range cand {
            distances[i] += Abs(c - initialColors[j])
        }
    }
    // fmt.Println(distances)
    
    if distances[0] < distances[1] {
        fmt.Println(distances[0])
    } else {
        fmt.Println(distances[1])
    }
}
