all: reveal.js reveal-chart

reveal.js:
	curl -LO https://github.com/hakimel/reveal.js/archive/4.6.0.tar.gz
	tar xzf 4.6.0.tar.gz
	mv reveal.js-4.6.0 reveal.js
	rm 4.6.0.tar.gz

reveal-chart: reveal.js
	git clone git@gitlab.com:dvenkatsagar/reveal-chart.git
	mv reveal-chart/plugin/chartjs reveal.js/plugin/
	rm -rf reveal-chart

clean:
	rm -rf reveal.js 4.6.0.tar.gz
