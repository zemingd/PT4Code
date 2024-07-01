
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type Op struct {
	cy int
	cx int
	ny int
	nx int
}

func solve(io *io) {
	h := io.NextInt()
	w := io.NextInt()
	a := make([][]int, h)
	for i := range a {
		a[i] = make([]int, w)
		for j := range a[i] {
			a[i][j] = io.NextInt()
		}
	}
	answers := make([]Op, 0)
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if i == h-1 && j == w-1 {
				break
			}
			var cy, cx, ny, nx, dx int
			cy = i
			if i%2 == 0 {
				cx = j
				dx = 1
			} else {
				cx = w - 1 - j
				dx = -1
			}
			if j == w-1 {
				ny = i + 1
				nx = cx
			} else {
				ny = i
				nx = cx + dx
			}
			if a[cy][cx]%2 != 0 {
				a[cy][cx]--
				a[ny][nx]++
				answers = append(answers, Op{cy, cx, ny, nx})
			}
		}
	}
	io.Println(len(answers))
	for _, a := range answers {
		io.Println(a.cy+1, a.cx+1, a.ny+1, a.nx+1)
	}
}

func main() {
	io := newIo()
	defer io.Flush()
	solve(io)
}

type io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

func newIo() *io {
	return &io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

func (io *io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

func (io *io) NextLine() string {
	var buffer []byte
	for {
		line, isPrefix, err := io.reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

func (io *io) Next() string {
	for io.nextToken >= len(io.tokens) {
		line := io.NextLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}
	r := io.tokens[io.nextToken]
	io.nextToken++
	return r
}

func (io *io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

func (io *io) NextFloat() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *io) Println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}

func (io *io) PrintIntLn(a []int) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.Println(b...)
}

func (io *io) PrintStringLn(a []string) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.Println(b...)
}

func log(name string, value interface{}) {
	fmt.Fprintf(os.Stderr, "%s=%+v\n", name, value)
}

func intMin(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func intMax(a, b int) int {
	if a > b {
		return a
	}
	return b
}
