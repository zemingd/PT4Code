package main

import "fmt"
import "os"
import "bufio"
import "bytes"
import "strconv"

const NEW_LINE byte = 10
const SPACE string = " "

type long int64
type float float32
type double float64

var reader *bufio.Reader
var buffer[][]byte
var pointer int

func InitReader() {
    reader = bufio.NewReaderSize(os.Stdin,4096)
}

func ReadLine() []byte {
    retBytes,_ := reader.ReadBytes(NEW_LINE)
    return retBytes
}

func Next() string {
    if pointer < len(buffer) {
        ret := buffer[pointer]
        pointer++
        return string(ret)
    }

    bs := ReadLine()
    bs = bs[0:len(bs)-1]
    buffer = bytes.Split(bs,[]byte(SPACE))
    pointer = 0
    return Next()
}

func NextLine() string {
    b := ReadLine()
    return string(bytes.TrimSpace(b))
}

func NextInt() int {
    s := Next()
    i,_ := strconv.ParseInt(s,10,32)
    return int(i)
}

func NextLong() long {
    s := Next()
    l,_ := strconv.ParseInt(s,10,64)
    return long(l)
}

func NextFloat() float {
    s := Next()
    f,_ := strconv.ParseFloat(s,32)
    return float(f)
}

func NextDouble() double {
    s := Next()
    d,_ := strconv.ParseFloat(s,64)
    return double(d)
}

func main() {
    InitReader()

    r := NextInt()
    g := NextInt()
    b := NextInt()

    if (r * 100 + g * 10 + b) % 4 == 0 {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }
}