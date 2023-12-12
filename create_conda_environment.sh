if [ -x "$(command -v conda)" ]
then
	conda create -n mybenchmarkenv r cnvkit pytorch -c r >> out 2>> err
else
	echo "conda command does exist"
	exit 1
fi

