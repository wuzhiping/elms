# elms
https://frappelms.com/

## docker commit -m "elms" elms_frappe_1 shawoo/elms:1.0
## mkdir mariadb
## chmod +777 mariadb
## chmod +x init.sh
## docker-compose up -d mariadb redis
## docker-compose up frappe
<pre>
   command: bash /workspace/init.sh
     >>>
   command: bash /workspace/start.sh
</pre>
## docker cp elms_frappe_1:/home/frappe/frappe-bench/sites ./
<pre>
   volumes:
      - ./sites:/home/frappe/frappe-bench/sites
</pre>

* lms.localhost/private/files
* lms.localhost/public/files

## docker-compose up -d

## http://x.y.z:9000
# Administrator
# admin

<pre style="color:pink;">
docker run --rm -ti \
  --name=ctop \
  --volume /var/run/docker.sock:/var/run/docker.sock:ro \
  quay.io/vektorlab/ctop:latest
</pre>
