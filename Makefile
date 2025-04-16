server: data
	hugo server -w --gc --disableFastRender

clean:
	rm -rf ./public ./resources ./data/*

.PHONY: data
data:
	scripts/summary_data.py ./data/summary/summarystats.json

gen: data
	hugo --gc

