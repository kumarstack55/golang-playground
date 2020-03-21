TARGET=$(addprefix ./output/,$(basename $(wildcard basics/*.go)))

all: $(TARGET)

./output/%: %.go
	go build -o $@ $^

clean:
	rm -f $(TARGET)
