help: ## Print this message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/://' -e 's/##//'
frontend: 			## Install Frontend Component
	@bash frontend.sh
catalogue: 			## Install catalogue Component
	@bash catalogue.sh
user: 				## Install user Component
	@bash user.sh
cart: 				## Install cart Component
	@bash cart.sh
shipping: 			## Install shipping Component
	@bash shipping.sh
payment:  			## Install payment Component
	@bash payment.sh
mongodb:  			## Install mongodb Component
	@bash mongodb.sh
redis:  			## Install redis Component
	@bash redis.sh
rbbitmq: 			## Install rbbitmq Component
	@bash rbbitmq.sh
mysql:				## Install mysql Component
	@bash mysql.sh
databases: 			## Install All Databases
databases: mongodb rbbitmq mysql redis


