TARGET=$(addprefix ./output/,$(basename $(wildcard 01_basics/*.go))) \
	$(addprefix ./output/,$(basename $(wildcard 02_flowcontrol/*.go)))

all: $(TARGET)

./output/%: %.go
	go build -o $@ $^

clean:
	rm -f $(TARGET)
