#!/bin/env bash
if ! [ -z "$(command -v conda)" ] # command "conda" exists
then
	echo 'cleaning cache and conda logs'
	conda env remove -n mybenchmarkenv > /dev/null
	conda clean -a > /dev/null 2>&1
	conda deactivate > /dev/null 2>&1
	module purge > /dev/null 2>&1
	echo 'conda cache cleaned, module purged'
else
	echo 'nothing to clean'
fi
