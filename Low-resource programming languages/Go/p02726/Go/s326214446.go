package main

import (
    "bufio"
    "fmt"
    "io"
    "os"
)

type BufferedWriter interface {
    Printf(format string, a ...interface{})
    Flush()
}

type writerImpl struct {
    *bufio.Writer
}

func NewBufferedWriter(writer io.Writer) BufferedWriter {
    return &writerImpl{Writer: bufio.NewWriter(writer)}
}

func (impl *writerImpl) Printf(f string, a ...interface{}) {
    fmt.Fprintf(impl.Writer, f, a...)
}

func (impl *writerImpl) Flush() {
    impl.Writer.Flush()
}

type WordScanner interface {
    NextInt() int
    NextInt64() int64
    NextString() string
}

type wordScannerImpl struct {
    *bufio.Scanner
}

func NewWordScanner(reader io.Reader) WordScanner {
    s := bufio.NewScanner(reader)
    s.Split(bufio.ScanWords)
    return &wordScannerImpl{Scanner: s}
}

func (impl *wordScannerImpl) NextInt() int {
    impl.Scan()
    bb := impl.Bytes()
    i := 0
    for _, b := range bb {
        i *= 10
        i += int(b - '0')
    }
    return i
}

func (impl *wordScannerImpl) NextInt64() int64 {
    impl.Scan()
    bb := impl.Bytes()
    i := int64(0)
    for _, b := range bb {
        i *= 10
        i += int64(b - '0')
    }
    return i
}

func (impl *wordScannerImpl) NextString() string {
    impl.Scan()
    return impl.Text()
}

var reader = NewWordScanner(os.Stdin)
var writer = NewBufferedWriter(os.Stdout)

func main() {
    defer writer.Flush()
    n, x, y := reader.NextInt64(), reader.NextInt64(), reader.NextInt64()
    res := make([]int64, n-1)
    for i := int64(1); i <= n; i++ {
        for j := i+1; j <= n; j++ {
            orig := j-i
            alt := abs(x-i) + 1 + abs(j-y)
            res[min(orig,alt)-1]++
        }
    }

    for _, v := range res {
        writer.Printf("%d\n", v)
    }
}

func abs(a int64) int64 {
    if a < 0 {
        a *= -1
    }
    return a
}

func min(a, b int64) int64 {
    if a < b {
        return a
    }
    return b
}
