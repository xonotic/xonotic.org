clean:
	rm -rf ./public

.PHONY: data
data:
	scripts/summary_data.py ./data/summary/summarystats.json

gen: data
	hugo --gc

server:
	hugo server -w --gc
