benchmark_command = conda create -n mybenchmarkenv cnvkit
module_list = conda3/202311 conda3/202303
benchmark:
	for module_benchmark in $(module_list); do\
		./clean_conda_cache.sh;\
		module load $$module_benchmark;\
		conda info > /dev/null;\
		echo time used for $$module_benchmark to perfrom $(benchmark_command):; \
		echo ;\
		time $(benchmark_command) >> /dev/null;\
	done
	./clean_conda_cache.sh
	
