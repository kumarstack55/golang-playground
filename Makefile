TARGET=$(addprefix ./output/,$(basename $(wildcard *.go)))

all: $(TARGET)

./output/%: %.go
	go build -o $@ $^

clean:
	rm -f $(TARGET)
