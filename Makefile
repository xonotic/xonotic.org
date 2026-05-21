server: data
	hugo server -w --gc --disableFastRender

clean:
	rm -rf ./public ./resources ./data/*

.PHONY: data
data:
	scripts/summary_data.py ./data/summary/summarystats.json

gen: data
	hugo --gc

test: gen
	# 403 is only a warning because llm scraper mitigations also block linkinator
	export PATH=node_modules/.bin:$$PATH ; linkinator --timeout 60000 --check-css --status-code "403:warn" --recurse public/
