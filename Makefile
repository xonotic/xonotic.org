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
	# gnu.org drops connections from linkinator now, thanks llm scrapers
	# TODO recheck: repology.org has registrar issues, hopefully it'll be back later, see https://github.com/repology/repology-rs/issues/560
	npx linkinator --recurse public/ --timeout 60000 --check-css --status-code '403:warn' --skip '^https?://.*\.gnu\.org/' --skip '^https?://repology\.org/'
	# anchor/fragment links on xonotic.org only (too many sites don't send the html until js is executed), 127.0.0.1 is linkinator's server for local files
	npx linkinator --recurse public/ --timeout 60000 --check-fragments --skip '^https?://(?!127.0.0.1|.*\.?xonotic\.org)'

